.class public final Lcom/sec/android/app/camera/PlugInShootingModesStorage;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    }
.end annotation


# static fields
.field private static final PRELOADED_THUMBNAILS_COUNT:I = 0xf

.field private static final SHOOTING_MODE_MAJOR_VERSION:I = 0x1

.field private static final SHOOTING_MODE_MINOR_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlugInShootingModesStorage"

.field private static mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;


# instance fields
.field private mBaseResources:Landroid/content/res/Resources;

.field private mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

.field private mCachedImagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternalResourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/PlugInShootingModesStorage;Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/PlugInShootingModesStorage;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setImagesCache(Ljava/util/HashMap;)V

    return-void
.end method

.method private declared-synchronized addDefaultMode(Landroid/content/Context;)V
    .locals 17

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Auto"

    const v4, 0x7f0c0034

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c004a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02041f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, "both"

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v4, "com.sec.android.app.camera.Auto"

    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Selfie"

    const v5, 0x7f0c0041

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020431

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, "both"

    const/4 v12, -0x1

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v4, "com.sec.android.app.camera.Selfie"

    invoke-virtual {v15, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    const/16 v5, 0x154

    invoke-virtual {v4, v5, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Ultra wide shot"

    const v6, 0x7f0c0047

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c005c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020435

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, "both"

    const/4 v13, -0x1

    invoke-direct/range {v3 .. v13}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    const-string v4, "com.sec.android.app.camera.Ultra wide shot"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    const/16 v5, 0x156

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModePreloaded(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-nez v3, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    :cond_1
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ge v3, v4, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    :cond_3
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-le v3, v4, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-gez v3, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    :cond_5
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-lez v3, :cond_6

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    :cond_6
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-nez v3, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1
.end method

.method private clearAll()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearShootingModes()V

    return-void
.end method

.method private clearCachedResources()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static clearResources()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearAll()V

    return-void
.end method

.method private getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getCachedBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/Camera;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v9, 0x6

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x3

    aput v2, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-direct {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    iget-object v9, v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    iget v9, v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setOrder(I)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2
    :try_start_1
    new-instance v9, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;

    invoke-direct {v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;-><init>()V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit p0

    return-object v9
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    .locals 2

    const-class v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getExternalModes(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getModesCopy()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v6, Ljava/util/HashMap;

    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private declared-synchronized getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    :cond_1
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static isShootingModeAvailable(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PlugInShootingModesStorage"

    const-string v2, "isShootingModeAvailable return : false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadExternalLibrary(ILjava/lang/String;)V
    .locals 5

    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x155

    if-eq p0, v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getExternalModes(I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :cond_1
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized setImagesCache(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearShootingModes()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultBackCameraShootingModeOrderList()V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getExternalModes(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultFrontCameraShootingModeOrderList()V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getModesListsAt(I)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getModesListsCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getPackageNativeLibraryDirMapping()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "com.sec.android.app.camera"

    const-string v7, "libseccameracore.so"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    iget-object v6, v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->addDefaultMode(Landroid/content/Context;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    :cond_4
    new-instance v7, Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    invoke-direct {v7, p1, p0, v5}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/PlugInShootingModesStorage;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
