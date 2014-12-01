.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 15

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    const/4 v14, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v14

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    if-lt v6, v1, :cond_1

    move v12, v11

    :goto_0
    return v12

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    add-int/2addr v6, v1

    :cond_2
    const-string v1, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v13}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v14, :cond_4

    add-int/lit8 v1, v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    const-wide/16 v4, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    const/4 v11, 0x1

    :cond_3
    move v12, v11

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_5

    iget-object v1, v14, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    goto :goto_1

    :cond_5
    iget-object v1, v14, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 23

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

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

    move-result-object v13

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    iget v2, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    iget v9, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v10, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v15, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v0, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v16, v0

    move/from16 v21, v9

    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    move/from16 v22, v10

    :goto_2
    add-int v2, v10, v16

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    aget-object v2, v7, v21

    const/4 v3, 0x1

    aput-boolean v3, v2, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_6

    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v21, v17

    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    move/from16 v22, v18

    :goto_4
    add-int v2, v18, v20

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    aget-object v2, v7, v21

    const/4 v3, 0x1

    aput-boolean v3, v2, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v0, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    const-wide/16 v3, -0x64

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v7, v1, v8

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    :cond_0
    const/4 v10, 0x1

    :cond_1
    return v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    const-string v18, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    const-string v18, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz v8, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v10

    :cond_3
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v12, v8}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_6

    const v18, 0x7f0f00fa

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "KDI"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v9, v4, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_0

    :cond_5
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v18, 0x7f0e0023

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    const v18, 0x7f0e0024

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v16

    const/16 v17, 0x0

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v18, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v17

    :cond_7
    move/from16 v6, v17

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    if-nez v7, :cond_9

    if-eq v6, v15, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-nez v7, :cond_a

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/InstallShortcutReceiver;->createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    :cond_a
    if-eqz v7, :cond_b

    const v18, 0x7f0f00fb

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_b
    const v18, 0x7f0f00b9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
