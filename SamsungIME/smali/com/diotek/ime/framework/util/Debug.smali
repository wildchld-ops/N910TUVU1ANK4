.class public abstract Lcom/diotek/ime/framework/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DBG_LEVEL_VERBOSE:Z

.field public static DEBUG:Z = false

.field public static final ENABLE_STACK_TRACE_EXCEPTION:Z = true

.field public static ENG_MODE:Z = false

.field public static ENG_MODE_STR:Ljava/lang/String; = null

.field public static ERROR:Z = false

.field public static final HWR_SYM_POPUP_NEXT_PAGE_ENABLE:Z = false

.field public static INFO:Z = false

.field public static final LEVEL_HIGH:I = 0x2

.field public static final LEVEL_LOW:I = 0x0

.field public static final LEVEL_MID:I = 0x1

.field public static final NEW_MULTITOUCH_MODE:Z = true

.field public static final PACKAGE_MODE:Z = false

.field private static final SYSTEM_DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final SYSTEM_DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final SYSTEM_DEBUG_LEVEL_MID:I = 0x494d

.field public static final TAG:Ljava/lang/String; = "SamsungIME"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "ro.build.type"

    const-string v3, "Default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    const-string v2, "ro.build.type"

    const-string v3, "Default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE_STR:Ljava/lang/String;

    sput-boolean v0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    sput-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    sput-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "0x4f4c"

    const-string v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DBG_LEVEL_VERBOSE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugLevel()I
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x494d

    if-ne v0, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isEngMode()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE_STR:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.type"

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE_STR:Ljava/lang/String;

    sget-object v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE_STR:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    return v0
.end method

.method public static printCallStack(Ljava/lang/Exception;)V
    .locals 4

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v2, "SamsungIME"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public static printExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception MSG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
