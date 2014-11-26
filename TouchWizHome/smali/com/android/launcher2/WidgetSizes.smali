.class Lcom/android/launcher2/WidgetSizes;
.super Ljava/lang/Object;
.source "WidgetSizes.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final EXTRA_WIDGET_RESIZE_SPANX:Ljava/lang/String; = "widgetspanx"

.field static final EXTRA_WIDGET_RESIZE_SPANY:Ljava/lang/String; = "widgetspany"

.field static final EXTRA_WIDGET_RESIZE_WIDGETID:Ljava/lang/String; = "widgetId"

.field private static final TAG:Ljava/lang/String; = "Launcher.WidgetSizes"

.field static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxXSpan:I

.field private mMaxYSpan:I

.field private mMinXSpan:I

.field private mMinYSpan:I

.field private mResizeMode:I

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mValidSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field public pureGoogle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/WidgetSizes;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/16 v2, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-void
.end method

.method private add(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    :cond_1
    return-void
.end method

.method private loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1    # Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v3, 0x1

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    iget-object v1, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iput-boolean v3, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    return-void
.end method


# virtual methods
.method public capHeight(I)I
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public capWidth(I)I
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public getAvailableSizeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMinXSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    return v0
.end method

.method public getMinYSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    return v0
.end method

.method public isAvailableSize(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-eq v5, v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-gt p1, v4, :cond_4

    :cond_2
    iget v4, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-eq v5, v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-gt p2, v4, :cond_4

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v4, v1, v3

    if-ne v4, p1, :cond_6

    aget v4, v1, v2

    if-ne v4, p2, :cond_6

    move v3, v2

    goto :goto_0
.end method

.method public load(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 25
    .param p1    # Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move/from16 v22, v0

    if-nez v22, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    sget-boolean v22, Lcom/android/launcher2/WidgetSizes;->DEBUGGABLE:Z

    if-eqz v22, :cond_0

    const-string v22, "Launcher.WidgetSizes"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LOAD: info recieved: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const/16 v23, 0x80

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    const-string v23, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    if-eqz v14, :cond_6

    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_3
    :goto_1
    const/16 v22, 0x0

    const-string v23, "supportCellSizes"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v14, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    if-lez v17, :cond_6

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    const/16 v22, 0x0

    aget v22, v4, v22

    const/16 v23, 0x1

    aget v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    move-object v3, v15

    array-length v9, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_7

    aget-object v13, v3, v7

    const/16 v22, 0x78

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v22, 0x0

    aget v22, v4, v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    aget v22, v4, v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/WidgetSizes;->loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_7
    return-void
.end method

.method public resizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    return v0
.end method

.method public setMinSpan(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iput p2, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    return-void
.end method
