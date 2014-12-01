.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;
.super Ljava/lang/Object;
.source "SMultiWindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMultiWindowManager"

.field private static sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    return-object v0
.end method


# virtual methods
.method public getRunningScaleWindows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
