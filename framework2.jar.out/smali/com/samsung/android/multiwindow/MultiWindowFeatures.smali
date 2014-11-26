.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final MULTIWINDOW_ENABLED:Z = true

.field private static sQueriedTypeMultiWindow:Z

.field private static sSupportCommonUI:Z

.field private static sSupportFixedSplitView:Z

.field private static sSupportFreeStyle:Z

.field private static sSupportFreeStyleDocking:Z

.field private static sSupportFreeStyleLaunch:Z

.field private static sSupportMinimize:Z

.field private static sSupportMinimizeAnimation:Z

.field private static sSupportMultiInstance:Z

.field private static sSupportMultiWindow:Z

.field private static sSupportMultiWindowLaunch:Z

.field private static sSupportQuadView:Z

.field private static sSupportRecentUI:Z

.field private static sSupportScaleWindow:Z

.field private static sSupportSplitFullScreen:Z

.field private static sSupportStyleTransition:Z

.field private static sSupportTabPenWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportStyleTransition:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportRecentUI:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimizeAnimation:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportTabPenWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    const-string v2, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    const-string v2, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    const-string v2, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    const-string v2, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    const-string v2, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    const-string v2, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    const-string v2, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    const-string v2, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    const-string v2, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    const-string v2, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    const-string v2, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportStyleTransition:Z

    const-string v2, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportRecentUI:Z

    const-string v2, "com.sec.feature.multiwindow.minimizeanimation"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimizeAnimation:Z

    const-string v2, "com.sec.feature.multiwindow.tabpenwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportTabPenWindow:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.styletransition.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportStyleTransition:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportRecentUI:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.minimizeanimation.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimizeAnimation:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/com.sec.feature.multiwindow.tabpenwindow.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportTabPenWindow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    goto/16 :goto_0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportCommonUI:Z

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFixedSplitView:Z

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyle:Z

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleDocking:Z

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportFreeStyleLaunch:Z

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimize:Z

    return v0
.end method

.method public static isSupportMinimizeAnimation(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMinimizeAnimation:Z

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiInstance:Z

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportMultiWindowLaunch:Z

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportQuadView:Z

    return v0
.end method

.method public static isSupportRecentUI(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportRecentUI:Z

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportScaleWindow:Z

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportSplitFullScreen:Z

    return v0
.end method

.method public static isSupportStyleTransition(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportStyleTransition:Z

    return v0
.end method

.method public static isSupportTabPenWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sSupportTabPenWindow:Z

    return v0
.end method
