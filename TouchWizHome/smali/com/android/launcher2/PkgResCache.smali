.class public Lcom/android/launcher2/PkgResCache;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PkgResCache$1;,
        Lcom/android/launcher2/PkgResCache$PkgEntry;,
        Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final INITIAL_ICON_CAPACITY:I = 0x3

.field private static final INITIAL_LABEL_CAPACITY:I = 0x3

.field private static final INITIAL_PACKAGE_CAPACITY:I = 0x50

.field private static final TAG:Ljava/lang/String; = "PkgResCache"


# instance fields
.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mFolderIcon:Landroid/graphics/Bitmap;

.field private final mIconDpi:I

.field private mMenuIconSize:I

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/PkgResCache$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private mTargetIconDpi:I

.field private final mUnavailableIcon:Landroid/graphics/Bitmap;

.field private final nullIcon:Landroid/graphics/Bitmap;

.field private final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 12

    const/16 v11, 0x140

    const/16 v10, 0xf0

    const/16 v9, 0xa0

    const/16 v8, 0x78

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v6, ""

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c00ad

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v6, 0x1050000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    if-ne v5, v2, :cond_0

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    :goto_0
    const/high16 v6, 0x10d0000

    invoke-direct {p0, v3, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    const v6, 0x7f020113

    invoke-direct {p0, v0, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    const v6, 0x7f0200c3

    invoke-direct {p0, v0, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    int-to-float v6, v5

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    if-gt v4, v8, :cond_1

    iput v8, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_1
    if-gt v4, v9, :cond_2

    iput v9, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_2
    if-gt v4, v10, :cond_3

    iput v10, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_3
    if-gt v4, v11, :cond_4

    iput v11, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_4
    const/16 v6, 0x1e0

    if-gt v4, v6, :cond_5

    const/16 v6, 0x1e0

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_5
    const/16 v6, 0x280

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput p2, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    const-string v0, "teeeeeeeeeeeeeeeeeeest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconDpi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V
    .locals 14

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_0

    if-eqz v4, :cond_a

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-nez v8, :cond_b

    new-instance v8, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    :cond_3
    if-nez v1, :cond_d

    :try_start_1
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    :goto_1
    if-eqz v3, :cond_6

    if-nez v6, :cond_6

    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v10, :cond_e

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v10, :cond_f

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_5
    :goto_4
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v12

    if-nez v6, :cond_12

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_5
    invoke-virtual {v12, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v10, :cond_13

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v9, v4, v10}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v10, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    if-eqz v10, :cond_7

    const-string v10, "PkgResCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loaded app name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v12

    if-nez v7, :cond_14

    const-string v10, ""

    :goto_7
    invoke-virtual {v12, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_8
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-eq v6, v10, :cond_9

    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_9
    if-eqz v7, :cond_a

    const-string v10, ""

    if-eq v7, v10, :cond_a

    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    :cond_a
    return-void

    :cond_b
    if-eqz v3, :cond_c

    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v6, v0

    :cond_c
    if-eqz v4, :cond_1

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_d
    :try_start_4
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v10, :cond_11

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_9

    :cond_12
    move-object v10, v6

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :cond_14
    move-object v10, v7

    goto :goto_7

    :catch_0
    move-exception v2

    if-eqz v3, :cond_15

    if-nez v6, :cond_15

    :try_start_5
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    iget-object v12, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    const-string v12, ""

    invoke-virtual {v10, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v10
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolderIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PkgResCache;->getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-eqz v5, :cond_3

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-ne v3, v7, :cond_4

    const/4 v3, 0x0

    :cond_0
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v3

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_4
    if-nez v3, :cond_0

    :try_start_2
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v6, v4, v7}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v9, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_4
    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_6
    move-object v7, v3

    goto :goto_4
.end method

.method public getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    const/4 v4, 0x0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-nez v4, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget v4, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v4, :cond_0

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v8, Landroid/content/pm/PackageItemInfo;->labelRes:I

    :cond_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_1
    return-object v7

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-eqz v5, :cond_5

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    :goto_2
    const-string v8, ""

    if-ne v7, v8, :cond_6

    const/4 v7, 0x0

    :cond_4
    :goto_3
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_5
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    if-nez v7, :cond_4

    :try_start_2
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    iget v8, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v8, :cond_7

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v6, v4, v8}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    if-nez v7, :cond_8

    const-string v8, ""

    :goto_5
    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_4
    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_8
    move-object v8, v7

    goto :goto_5
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    :goto_0
    return-void

    :cond_0
    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    goto :goto_0
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_4

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    iget v3, p2, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-nez v3, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    iget v3, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/PackageItemInfo;->labelRes:I

    :cond_0
    iput v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getUnavailableIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    if-nez v3, :cond_1

    :cond_0
    :try_start_1
    const-string v3, "com.samsung.helphub"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget v4, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    invoke-static {v1, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_2
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "PkgResCache"

    const-string v4, "Cound not call getCSCPackageItemIcon. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_2
    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "PkgResCache"

    const-string v4, "Could not call getCSCPackageItemText. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
