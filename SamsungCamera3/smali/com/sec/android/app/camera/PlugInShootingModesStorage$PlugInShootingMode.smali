.class public final Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlugInShootingMode"
.end annotation


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final cameraType:Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;

.field public final iconId:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final modeDesc:Ljava/lang/String;

.field public final modeTitle:Ljava/lang/String;

.field public final nativeLibraryDir:Ljava/lang/String;

.field public final order:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    iput p6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    iput p7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    iput-object p8, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;

    iput p10, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    return-void

    :catch_0
    move-exception v0

    const-string v2, "PlugInShootingModesStorage"

    const-string v3, "not recognized camera type"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;->BOTH:Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;

    goto :goto_0
.end method
