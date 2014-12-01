.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_MULTIWINDOW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FEATURE_MULTIWINDOW"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "FEATURE_MULTIWINDOW_FREESTYLE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "FEATURE_MULTIWINDOW_MINIMIZE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "FEATURE_MULTIWINDOW_QUADVIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "FEATURE_MULTIWINDOW_MULTIINSTANCE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "FEATURE_MULTIWINDOW_FREESTYLE_DOCKING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "FEATURE_MULTIWINDOW_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FEATURE_MULTIWINDOW_TABLET"

    aput-object v3, v1, v2

    sput-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
