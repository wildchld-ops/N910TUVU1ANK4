.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BOOTLOADER:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final CPU_ABI:Ljava/lang/String;

.field public static final CPU_ABI2:Ljava/lang/String;

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final HARDWARE:Ljava/lang/String;

.field public static final HOST:Ljava/lang/String;

.field public static final HOUDINI_ABI:Ljava/lang/String; = "armeabi-v7a"

.field public static final HOUDINI_ABI2:Ljava/lang/String; = "armeabi"

.field public static final ID:Ljava/lang/String;

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_ENG_SECURED:Z

.field private static final IS_SECURE:Z

.field public static final IS_SYSTEM_SECURE:Z

.field private static final IS_TRANSLATION_ASSISTANT_ENABLED:Z

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field public static final RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String;

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.cpu.abi"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.cpu.abi2"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.date.utc"

    invoke-static {v0}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sput-wide v3, Landroid/os/Build;->TIME:J

    const-string/jumbo v0, "ro.build.user"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.host"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v0, "ro.secure"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/os/Build;->IS_SECURE:Z

    const-string/jumbo v0, "persist.translation.assistant"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Landroid/os/Build;->IS_TRANSLATION_ASSISTANT_ENABLED:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_SECURE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_TRANSLATION_ASSISTANT_ENABLED:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/os/Build;->IS_SECURE:Z

    if-eqz v0, :cond_4

    :goto_4
    sput-boolean v1, Landroid/os/Build;->IS_ENG_SECURED:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
