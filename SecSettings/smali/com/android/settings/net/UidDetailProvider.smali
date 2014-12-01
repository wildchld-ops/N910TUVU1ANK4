.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1

    add-int/lit16 v0, p0, 0x7d0

    neg-int v0, v0

    return v0
.end method

.method private buildUidDetail(I)Lcom/android/settings/net/UidDetail;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v3, Lcom/android/settings/net/UidDetail;

    invoke-direct {v3}, Lcom/android/settings/net/UidDetail;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    sparse-switch p1, :sswitch_data_0

    const/16 v14, -0x7d0

    move/from16 v0, p1

    if-gt v0, v14, :cond_2

    move/from16 v0, p1

    neg-int v14, v0

    add-int/lit16 v13, v14, -0x7d0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    const v14, 0x7f090893

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v14, v12, v5, v11}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-object v3

    :sswitch_0
    const v14, 0x7f090a71

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f090c01

    :goto_1
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v14, 0x7f090c00

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :sswitch_3
    const v14, 0x7f0917d6

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const v14, 0x7f0203ec

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    array-length v6, v9

    :goto_2
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v9, v14

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    iget-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v14, 0x1

    if-le v6, v14, :cond_3

    :try_start_1
    new-array v14, v6, [Ljava/lang/CharSequence;

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_3

    aget-object v8, v9, v4

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v14, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    iget v14, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v14, :cond_6

    iget v14, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8, v14, v15}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v14

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_3
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .locals 3

    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetail;

    monitor-exit v2

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
