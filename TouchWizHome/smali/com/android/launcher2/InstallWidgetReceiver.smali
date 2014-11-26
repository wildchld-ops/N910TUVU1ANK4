.class public Lcom/android/launcher2/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# static fields
.field public static final ACTION_INSTALL_WIDGET:Ljava/lang/String; = "com.android.launcher.action.INSTALL_WIDGET"

.field public static final ACTION_SUPPORTS_CLIPDATA_MIMETYPE:Ljava/lang/String; = "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

.field public static final EXTRA_APPWIDGET_COMPONENT:Ljava/lang/String; = "com.android.launcher.extra.widget.COMPONENT"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA_MIME_TYPE:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

.field public static final LAUNCHER_ACTION_INSTALL_WIDGET:Ljava/lang/String; = "com.sec.launcher.action.INSTALL_WIDGET"

.field public static final LAUNCHER_EXTRA_APPWIDGET_COMPONENT:Ljava/lang/String; = "com.sec.launcher.intent.extra.COMPONENT"

.field public static final LAUNCHER_EXTRA_APPWIDGET_DUPALLOWED:Ljava/lang/String; = "com.sec.launcher.intent.extra.DUPLICATE"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEX:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeX"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEY:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x3

    const/4 v1, 0x0

    const-string v0, "ExtraStuff"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v0, "replace"

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "class"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "spanX"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "spanY"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "cellX"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "cellY"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "screen"

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/InstallWidgetReceiver;->replaceDummyWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII)V

    :cond_0
    return-void
.end method

.method public replaceDummyWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 16
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I

    new-instance v15, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v2, 0x400

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    invoke-virtual {v12, v11, v13}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v14

    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v3, v13, v11}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    move/from16 v0, p8

    iput v0, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, p6

    iput v0, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p7

    iput v0, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, p5

    iput v0, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    iget v2, v3, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto :goto_0
.end method
