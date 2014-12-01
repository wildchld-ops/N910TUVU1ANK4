.class public final Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
.super Ljava/lang/Object;
.source "SMultiWindow.java"


# static fields
.field private static enableQueried:Z

.field private static isFreeStyleEnabled:Z

.field private static isMultiWindowEnabled:Z

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionCode:I

    const-string v0, "1.2.3"

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionName:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyleEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initMultiWindowFeature()V

    return-void
.end method

.method private initMultiWindowFeature()V
    .locals 2

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyleEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isFeatureEnabled(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyleEnabled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
