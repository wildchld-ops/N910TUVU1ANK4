.class public Lcom/android/server/wm/PrecapData;
.super Ljava/lang/Object;
.source "PrecapData.java"


# static fields
.field private static final PRECAP_CAPTURED_IMAGE_FOR_STARTING_WINDOW:Ljava/lang/String; = "com.samsung.precap.CAPTURED_IMAGE_FOR_STARTING_WINDOW"

.field public static final PRECAP_CAPTURE_MODE_AUTO:I = 0x1

.field public static final PRECAP_CAPTURE_MODE_DISABLE:I = 0x0

.field public static final PRECAP_CAPTURE_MODE_MANUAL:I = 0x2

.field private static final PRECAP_DEFAULT_IMAGE_FOR_STARTING_WINDOW:Ljava/lang/String; = "com.samsung.precap.DEFAULT_IMAGE_FOR_STARTING_WINDOW"

.field private static final TAG:Ljava/lang/String; = "PrecapData"

.field public static easyModeOn:Z

.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mContext:Landroid/content/Context;


# instance fields
.field public bitmapIsLoaded:Z

.field public callFromHome:Z

.field public captureModeFlag:I

.field public hadStartingWindow:Z

.field public key:Ljava/lang/String;

.field public resIdOfDefaultImage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/PrecapData;->easyModeOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wm/PrecapData;->callFromHome:Z

    iput v1, p0, Lcom/android/server/wm/PrecapData;->resIdOfDefaultImage:I

    iput-boolean v1, p0, Lcom/android/server/wm/PrecapData;->hadStartingWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/PrecapData;->bitmapIsLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Z)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/content/pm/ActivityInfo;
    .param p3    # Z

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/wm/PrecapData;->callFromHome:Z

    iput v4, p0, Lcom/android/server/wm/PrecapData;->resIdOfDefaultImage:I

    iput-boolean v4, p0, Lcom/android/server/wm/PrecapData;->hadStartingWindow:Z

    iput-boolean v4, p0, Lcom/android/server/wm/PrecapData;->bitmapIsLoaded:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/PrecapData;->key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/PrecapData;->callFromHome:Z

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "AUTO"

    const-string v2, "com.samsung.precap.CAPTURED_IMAGE_FOR_STARTING_WINDOW"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PrecapData"

    const-string/jumbo v2, "precap auto support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    :cond_2
    :goto_1
    const-string v1, "com.samsung.precap.DEFAULT_IMAGE_FOR_STARTING_WINDOW"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PrecapData;->resIdOfDefaultImage:I

    :cond_3
    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "AUTO"

    const-string v2, "com.samsung.precap.CAPTURED_IMAGE_FOR_STARTING_WINDOW"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PrecapData"

    const-string/jumbo v2, "precap auto support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    :cond_4
    :goto_2
    iget v1, p0, Lcom/android/server/wm/PrecapData;->resIdOfDefaultImage:I

    if-gtz v1, :cond_0

    const-string v1, "com.samsung.precap.DEFAULT_IMAGE_FOR_STARTING_WINDOW"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PrecapData;->resIdOfDefaultImage:I

    goto :goto_0

    :cond_5
    const-string v1, "MANUAL"

    const-string v2, "com.samsung.precap.CAPTURED_IMAGE_FOR_STARTING_WINDOW"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PrecapData"

    const-string/jumbo v2, "precap manual support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    goto :goto_1

    :cond_6
    const-string v1, "MANUAL"

    const-string v2, "com.samsung.precap.CAPTURED_IMAGE_FOR_STARTING_WINDOW"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PrecapData"

    const-string/jumbo v2, "precap manual support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/wm/PrecapData;->captureModeFlag:I

    goto :goto_2
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/wm/PrecapData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static registerContentObserverForEasyMode(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    sput-object p0, Lcom/android/server/wm/PrecapData;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/wm/PrecapData$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/wm/PrecapData$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/wm/PrecapData;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/wm/PrecapData;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
