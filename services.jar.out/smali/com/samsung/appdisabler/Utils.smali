.class public Lcom/samsung/appdisabler/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_SECURE:Z

.field private static final TAG:Ljava/lang/String; = "AppDisabler"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/appdisabler/Utils;->getSecure()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "AppDisabler"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    if-eqz v0, :cond_0

    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    if-eqz v0, :cond_0

    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getSecure()Z
    .locals 3

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
