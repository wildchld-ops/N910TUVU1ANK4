.class public final enum Lcom/android/launcher2/SamsungWidgetPackageManager;
.super Ljava/lang/Enum;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/SamsungWidgetPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/SamsungWidgetPackageManager;

.field static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DEFAULT_WIDGET_NUMBER:I = 0xa

.field public static final enum INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final LOG_TAG:Ljava/lang/String; = "SWidgetPkgMgr"

.field private static final METADATA_NAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET"

.field private static final WIDGET_ID_COL:[Ljava/lang/String;

.field private static final WIDGET_ID_WHERE:Ljava/lang/String;

.field static final WIDGET_NAME:Ljava/lang/String; = "plug_in_name"


# instance fields
.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private mConfigMccWhenLoaded:I

.field private mConfigMncWhenLoaded:I

.field private mLocaleWhenLoaded:Ljava/lang/String;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private mSamsungWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher2/SamsungWidgetPackageManager;

    const-string v1, "INSTANCE"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher2/SamsungWidgetPackageManager;-><init>(Ljava/lang/String;ILcom/android/launcher2/LauncherApplication;)V

    sput-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    new-array v0, v4, [Lcom/android/launcher2/SamsungWidgetPackageManager;

    sget-object v1, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->$VALUES:[Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "appWidgetId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->WIDGET_ID_COL:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->WIDGET_ID_WHERE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/launcher2/LauncherApplication;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/LauncherApplication;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private loadWidgetLk(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .locals 24

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    if-nez v13, :cond_0

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-string v21, "plug_in_name"

    const-string v22, "string"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_1
    const/16 v21, 0x0

    const-string v22, "description"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/16 v21, 0x0

    const-string v22, "height"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const/16 v21, 0x0

    const-string v22, "preview"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    const/16 v21, 0x0

    const-string v22, "width"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x0

    const-string v22, "themeName"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v9, :cond_1

    if-nez v20, :cond_4

    :cond_1
    const-string v21, "SWidgetPkgMgr"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "required attribute not specified for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_4
    new-instance v19, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/SamsungWidgetProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v0, v19

    iput v14, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetPreview:I

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mDescription:Ljava/lang/String;

    iget v12, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_6

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalWidth:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalHeight:I

    const/4 v11, 0x1

    :goto_2
    iput v11, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalWidth:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalHeight:I

    :goto_3
    iput v12, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object/from16 v18, v19

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalWidth:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalHeight:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_1
    move-exception v7

    move-object/from16 v18, v19

    :goto_4
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalWidth:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalHeight:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_2
    move-exception v7

    move-object/from16 v18, v19

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v7

    :goto_6
    sget-boolean v21, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v21, :cond_8

    const-string v21, "SWidgetPkgMgr"

    const-string v22, "Resource not found exception:"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v7

    move-object/from16 v18, v19

    goto :goto_6

    :catch_5
    move-exception v7

    goto :goto_5

    :catch_6
    move-exception v7

    goto :goto_4
.end method

.method private loadWidgetsLk(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetProviderInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "SWidgetPkgMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No widget meta-data found for component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v5, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p2, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadWidgetLk(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    const-class v0, Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->$VALUES:[Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method


# virtual methods
.method public allocWidgetId()I
    .locals 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/SamsungWidgetPackageManager;->WIDGET_ID_COL:[Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/SamsungWidgetPackageManager;->WIDGET_ID_WHERE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appWidgetId"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v7, v8, :cond_2

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    add-int/lit8 v7, v8, 0x1

    goto :goto_0
.end method

.method public createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;)Lcom/android/launcher2/SamsungWidgetItem;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->allocWidgetId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/launcher2/SamsungWidgetItem;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;J)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;Lcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;
    .locals 4

    iget-wide v0, p3, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->allocWidgetId()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/launcher2/SamsungWidgetItem;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;JLcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p3, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    goto :goto_0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 5

    iget-wide v0, p2, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    return-void
.end method

.method public findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    if-eq p2, v3, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method declared-synchronized forceReload()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidgetItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungWidgets:Ljava/util/List;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mConfigMccWhenLoaded:I

    iget v7, v1, Landroid/content/res/Configuration;->mnc:I

    iput v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mConfigMncWhenLoaded:I

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sget-boolean v7, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "SWidgetPkgMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query for samsung widgets returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v6, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadWidgetsLk(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_1
    :try_start_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungWidgets:Ljava/util/List;

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungWidgets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v7
.end method

.method declared-synchronized loadIfNeeded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mConfigMccWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mConfigMncWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
