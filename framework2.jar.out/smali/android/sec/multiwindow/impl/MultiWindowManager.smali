.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/MultiWindowManager$FEATURE_LEVEL;
    }
.end annotation


# static fields
.field public static final APPLIST_POSITION_BOTTOM:I = 0x2

.field public static final APPLIST_POSITION_LEFT:I = 0x3

.field public static final APPLIST_POSITION_RIGHT:I = 0x4

.field public static final APPLIST_POSITION_TOP:I = 0x1

.field public static final CALLBACK_TYPE_COMMON:I = 0x0

.field public static final CALLBACK_TYPE_MINIMIZE:I = 0x1

.field public static final CENTER_BAR_TYPE_EXTRA:I = 0x2

.field public static final CENTER_BAR_TYPE_NORMAL:I = 0x1

.field public static final MINIMIZE_ICON_STATE_EXPANDED:I = 0x1

.field public static final MINIMIZE_ICON_STATE_STACKED:I = 0x0

.field public static final MW_FEATURE_MINIMIZED_FLOATING_ICON:Z = true

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarInnerPadding:I

.field private static sFeatureLevel:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sQueried:Z

.field private static sQueriedTypeMultiWindow:Z

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z

.field private static sSupportCommonUI:Z

.field private static sSupportFixedSplitView:Z

.field private static sSupportFreeStyle:Z

.field private static sSupportFreeStyleDocking:Z

.field private static sSupportFreeStyleLaunch:Z

.field private static sSupportMinimize:Z

.field private static sSupportMultiInstance:Z

.field private static sSupportMultiWindow:Z

.field private static sSupportMultiWindowLaunch:Z

.field private static sSupportQuadView:Z

.field private static sSupportRecentUI:Z

.field private static sSupportScaleWindow:Z

.field private static sSupportSplitFullScreen:Z


# instance fields
.field private mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    const/4 v0, 0x2

    sput v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/sec/multiwindow/impl/IMultiWindowManager;)V
    .locals 1
    .param p1    # Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    iput-object p1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    return-void
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_4

    iget v3, v2, Landroid/graphics/Point;->y:I

    :goto_1
    mul-int/lit16 v5, v3, 0xa0

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v4, v5, v6

    const/16 v5, 0x258

    if-lt v4, v5, :cond_2

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    iget v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method public static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    const-string v1, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    const-string v1, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    const-string v1, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    const-string v1, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    const-string v1, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    const-string v1, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    const-string v1, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    const-string v1, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    const-string v1, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    const-string v1, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    const-string v1, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    goto/16 :goto_0
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 5
    .param p0    # Landroid/graphics/Point;

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    sget-boolean v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v4, :cond_1

    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :cond_1
    sub-int v2, v3, v2

    iput v2, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 1

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getFeatureLevel(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    :cond_0
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemNavBar()Z
    .locals 1

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .locals 1
    .param p0    # Z

    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 1
    .param p0    # I
    .param p1    # Z
    .param p2    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isCascadeWindow(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiWindow(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isNormalWindow(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isPinup(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isResizable(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isScaleWindow(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    return v0
.end method

.method private static mode(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return-void
.end method

.method private static zone(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/graphics/Rect;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/MotionEvent;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public findDockingWindowZone(IIIII)I
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->findDockingWindowZone(IIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppListPosition()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getAppListPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrangeState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getArrangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimizeIconState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMinimizeIconState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiDisplayState()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiDisplayTarget()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayTarget()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResumedTaskCount()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getResumedTaskCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1    # Landroid/content/pm/ActivityInfo;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchExternalDisplay(Z)V
    .locals 2
    .param p1    # Z

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->launchExternalDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public minimizeAll()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->minimizeAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .locals 2
    .param p1    # Z
    .param p2    # Z

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->notifyMultiDisplayState(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .locals 2
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppListPosition(I)V
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setAppListPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1    # Landroid/graphics/Point;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMinimizeStackedIcon()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMinimizeStackedIcon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiDisplayState(Z)V
    .locals 1
    .param p1    # Z

    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiDisplayTarget(I)Z
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayTarget(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .locals 2
    .param p1    # Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method
