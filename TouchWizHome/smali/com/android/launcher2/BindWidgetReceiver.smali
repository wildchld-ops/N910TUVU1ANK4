.class public Lcom/android/launcher2/BindWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BindWidgetReceiver.java"


# static fields
.field public static final ACTION_BIND_WIDGET:Ljava/lang/String; = "com.android.launcher.action.BIND_WIDGET"

.field public static final ACTION_BIND_WIDGET_COMPLETE:Ljava/lang/String; = "com.android.launcher.action.BIND_WIDGET_COMPLETE"

.field public static final ACTION_UNBIND_WIDGET:Ljava/lang/String; = "com.android.launcher.action.UNBIND_WIDGET"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "componentName"

.field public static final EXTRA_SPANX:Ljava/lang/String; = "spanX"

.field public static final EXTRA_SPANY:Ljava/lang/String; = "spanY"

.field public static final EXTRA_WIDGET_NAME:Ljava/lang/String; = "widgetName"

.field private static final TAG:Ljava/lang/String; = "Launcher.BindWidgetReceiver"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x0

    const-string v6, "componentName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v6, 0x2

    new-array v5, v6, [I

    const-string v6, "spanX"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v8

    const-string v6, "spanX"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    invoke-static {p1, v6, p3, v5}, Lcom/android/launcher2/BindWidgetReceiver;->findEmptyCell(Landroid/content/Context;[II[I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v6, :cond_0

    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v3, v2, v7}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v3, p3}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    aget v6, v6, v8

    iput v6, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    aget v6, v6, v9

    iput v6, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    aget v6, v5, v8

    iput v6, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v6, v5, v9

    iput v6, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    const-wide/16 v6, -0x64

    iput-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    iput-boolean p4, v3, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iget-object v6, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeView;->addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static findEmptyCell(Landroid/content/Context;[II[I)Z
    .locals 22

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    iget v8, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v9, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v14, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v15, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v20, v8

    :goto_0
    add-int v2, v8, v14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    move/from16 v21, v9

    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v20, v16

    :goto_2
    add-int v2, v16, v18

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    move/from16 v21, v17

    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    aget v3, p3, v2

    const/4 v2, 0x1

    aget v4, p3, v2

    sget v5, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public bindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    const-string v23, "componentName"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-string v24, "spanX"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    aput v24, v20, v23

    const/16 v23, 0x1

    const-string v24, "spanX"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    aput v24, v20, v23

    if-eqz v6, :cond_0

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    aget v23, v20, v23

    if-lez v23, :cond_0

    const/16 v23, 0x1

    aget v23, v20, v23

    if-gtz v23, :cond_5

    :cond_0
    if-eqz v6, :cond_1

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    :cond_1
    const-string v23, "Launcher.BindWidgetReceiver"

    const-string v24, "ComponentName is null or empty"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v23, 0x0

    aget v23, v20, v23

    if-lez v23, :cond_3

    const/16 v23, 0x1

    aget v23, v20, v23

    if-gtz v23, :cond_4

    :cond_3
    const-string v23, "Launcher.BindWidgetReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Span ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_d

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v11

    :cond_6
    const/16 v17, 0x0

    const/4 v7, 0x0

    const/16 v22, 0x0

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    :cond_7
    if-eqz v7, :cond_a

    if-eqz v22, :cond_a

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v17

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v23, :cond_9

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    if-nez v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v17

    :cond_8
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v23

    if-nez v23, :cond_9

    if-eqz v10, :cond_9

    const/16 v17, 0x0

    :cond_9
    sget-boolean v23, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v23, :cond_a

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v23, :cond_a

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v23, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v17

    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v23, 0x7f0e0023

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    sput v23, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    const v23, 0x7f0e0024

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    sput v23, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    if-nez v9, :cond_11

    if-eqz v7, :cond_11

    if-eqz v22, :cond_11

    const/16 v21, 0x0

    const/16 v18, 0x0

    if-eqz v10, :cond_f

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v18

    :goto_3
    move/from16 v8, v21

    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_10

    if-nez v9, :cond_10

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v23

    move/from16 v0, v23

    if-eq v8, v0, :cond_c

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    :cond_e
    const/16 v17, 0x0

    goto :goto_2

    :cond_f
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v21

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v18

    goto :goto_3

    :cond_10
    if-nez v9, :cond_11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    if-eqz v7, :cond_11

    if-eqz v22, :cond_11

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_11
    :goto_5
    if-nez v9, :cond_4

    const v23, 0x7f0f00d6

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    sget-boolean v23, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v23, :cond_13

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v23, :cond_13

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v24

    sub-int v13, v23, v24

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto :goto_5

    :cond_13
    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->addPage()V

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    add-int/lit8 v13, v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto :goto_5

    :cond_14
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "com.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/BindWidgetReceiver;->unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "screen"

    aput-object v5, v3, v4

    const-string v4, "appWidgetId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v2, "screen"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v22, v2

    const/4 v2, 0x1

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v22, v2

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherApplication;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v21

    :cond_2
    const/16 v16, 0x0

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v16

    :cond_3
    const/16 v17, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [I

    const-wide/16 v2, -0x64

    const/4 v4, 0x1

    aget v4, v20, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v7

    const/16 v19, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/BaseItem;

    instance-of v2, v12, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v2, :cond_4

    iget-wide v2, v12, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v4, 0x0

    aget v4, v20, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {v14, v12}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v2, v12

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    move-object v15, v12

    check-cast v15, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v10

    if-eqz v10, :cond_4

    new-instance v2, Lcom/android/launcher2/BindWidgetReceiver$1;

    const-string v3, "Unbind widget from BindWidgetReceiver"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v10, v15}, Lcom/android/launcher2/BindWidgetReceiver$1;-><init>(Lcom/android/launcher2/BindWidgetReceiver;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
