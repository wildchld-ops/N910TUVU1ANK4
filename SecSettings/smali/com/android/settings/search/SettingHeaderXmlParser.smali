.class public Lcom/android/settings/search/SettingHeaderXmlParser;
.super Ljava/lang/Object;
.source "SettingHeaderXmlParser.java"


# static fields
.field private static final DBG:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final headerCheckMenu2013:[I

.field private final headerSwitchMenu:[I

.field private final headerSwitchMenu2013:[I

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Lcom/android/settings/search/SettingSearchManager;

.field xmlParserHeadFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xmlParserPreferenceFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/search/SettingHeaderXmlParser;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SettingHeaderXmlParser"

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    sput-object p1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b074d
        0x7f0b074f
        0x7f0b075e
        0x7f0b0760
        0x7f0b0771
        0x7f0b0772
        0x7f0b0777
        0x7f0b0783
        0x7f0b0784
    .end array-data

    :array_1
    .array-data 4
        0x7f0b074d
        0x7f0b074f
        0x7f0b075e
        0x7f0b0760
        0x7f0b0784
        0x7f0b0772
        0x7f0b07bd
        0x7f0b07be
        0x7f0b07bf
        0x7f0b0783
        0x7f0b0771
        0x7f0b0777
        0x7f0b07b3
        0x7f0b0788
        0x7f0b0751
        0x7f0b0754
    .end array-data

    :array_2
    .array-data 4
        0x7f0b07c0
        0x7f0b078f
    .end array-data
.end method

.method private addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;
    .locals 20
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v17, "preference-headers"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v6

    :try_start_1
    const-string v17, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_2

    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1a

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_1a

    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    new-instance v14, Lcom/android/settings/search/SearchItem;

    invoke-direct {v14}, Lcom/android/settings/search/SearchItem;-><init>()V

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const v17, 0x7f0b0775

    move/from16 v0, v17

    if-ne v8, v0, :cond_8

    const-string v17, "Safety assistance"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    const v17, 0x7f0b0740

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    const-string v17, "Call settings"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v17

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v17

    :cond_a
    const/4 v7, 0x0

    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_b

    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerCheckMenu2013:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    const v17, 0x7f0b0782

    move/from16 v0, v17

    if-ne v0, v8, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_f

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    :cond_e
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_15

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :cond_f
    :goto_5
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :cond_10
    :goto_6
    const v17, 0x7f0b0750

    move/from16 v0, v17

    if-ne v8, v0, :cond_11

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const-wide/32 v17, 0x7f090780

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090780

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :cond_11
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->iconResId:I

    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    iget v0, v14, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    const/4 v9, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_13
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    if-ne v0, v8, :cond_14

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_9

    :cond_15
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_5

    :cond_16
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_10

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    :cond_17
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_18

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    sget-object v17, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :goto_a
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_6

    :cond_18
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_1a
    if-eqz v12, :cond_2

    goto/16 :goto_0
.end method

.method private addPreferencesScreenFromRes(I)Ljava/util/ArrayList;
    .locals 20
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v16, "PreferenceScreen"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v6

    :try_start_1
    const-string v16, "SettingHeaderXmlParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_2

    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    :cond_4
    :goto_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v10, :cond_1d

    :cond_5
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v16, "PreferenceCategory"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    new-instance v14, Lcom/android/settings/search/SearchItem;

    invoke-direct {v14}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v16, "CheckBoxPreference"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    :goto_2
    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    sget-object v17, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    :goto_3
    if-ltz v7, :cond_d

    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_4
    :pswitch_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_7
    const-string v16, "SwitchPreferenceScreen"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "com.android.settings.SettingsSwitchPreference"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v16

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v16

    :cond_a
    const/16 v16, 0x0

    :try_start_3
    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_2

    :pswitch_1
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->iconResId:I

    goto :goto_4

    :pswitch_2
    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    goto :goto_4

    :pswitch_3
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    iget-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_b

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    iget-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    :cond_b
    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    :pswitch_4
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    iget-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_c

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    iget-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :goto_5
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto :goto_5

    :pswitch_5
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    const v17, 0x7f040205

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/16 v16, 0x3

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_4

    :cond_d
    const-string v16, "location_network"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    :cond_e
    :goto_6
    const-string v16, "lock_after_timeout"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const-string v16, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const-wide/32 v16, 0x7f090086

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090086

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :cond_f
    const-string v16, "usb_tether_settings"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const-string v16, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const-wide/32 v16, 0x7f090784

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090784

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :cond_10
    const-string v16, "brightness_adjustment"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_11

    const-wide/32 v16, 0x7f091607

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f091607

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :cond_11
    const-string v16, "toggle_easy_interaction_preference"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_12

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_1b

    :cond_12
    const-wide/32 v16, 0x7f091273

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f091273

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :cond_13
    :goto_7
    const-string v16, "sound_splanner"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "VMU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "BST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "XAS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "CRI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "CSP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "XAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "LRA"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "MCT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "GLW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "ESK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    const-string v16, "XAC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    :cond_14
    const-wide/32 v16, 0x7f09115a

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->titleResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f09115a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :cond_15
    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->isBlockSummaryMenu(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_16

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    :cond_16
    if-nez v5, :cond_17

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_17
    const-string v16, "com.android.settings"

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_19
    const-string v16, "location_vzw_gps"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_6

    :cond_1a
    const-string v16, "location_vzw_network"

    iget-object v0, v14, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v14, Lcom/android/settings/search/SearchItem;->menuType:I

    goto/16 :goto_6

    :cond_1b
    const-wide/32 v16, 0x7f091272

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/settings/search/SearchItem;->summaryResId:J

    sget-object v16, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f091272

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_1d
    if-eqz v11, :cond_2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBlockSummaryMenu(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x1e

    new-array v3, v0, [Ljava/lang/String;

    const v0, 0x7f0b074d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const v0, 0x7f0b074f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const v4, 0x7f0b0751

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "unlock_set_or_change"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "screen_timeout"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "touch_key_light"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "MONOTYPE"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "font_size"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "tts_settings_preference"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "air_view_mode"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "date"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "time"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "timezone"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "date_format"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "device_name"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "device_model"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "firmware_version"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "baseband_version"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "kernel_version"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "build_number"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "selinux_status"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "lock_after_timeout"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "voice_input_control_incomming_calls"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "voice_input_control_chatonv"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string v4, "voice_input_control_alarm"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string v4, "voice_input_control_camera"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string v4, "voice_input_control_music"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "phone_vibration"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "signature_verification_level"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "power_saving_auto_turn_on"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initSearchDB()V
    .locals 14

    const/4 v11, 0x0

    new-instance v8, Lcom/android/settings/search/SettingsSearchUtils;

    sget-object v9, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getSearchMenuInfo()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-nez v9, :cond_1

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v10, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v9, v9, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addHeaderPreferencesFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/search/SettingHeaderXmlParser;->addPreferencesScreenFromRes(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/android/settings/search/SettingsSearchUtils;->getAddSearchMenuInCode()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SearchItem;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem;

    sget-object v12, Lcom/android/settings/search/SettingsSearchUtils;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/search/SearchItem;

    iget-object v10, v10, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_6
    iput v10, v9, Lcom/android/settings/search/SearchItem;->registerMode:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/search/SearchItem;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/search/SearchItem;

    iget v12, v10, Lcom/android/settings/search/SearchItem;->registerMode:I

    sget-object v13, Lcom/android/settings/search/SettingsSearchUtils;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/search/SearchItem;

    iget-object v10, v10, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-static {v13, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    :goto_7
    or-int/2addr v10, v12

    iput v10, v9, Lcom/android/settings/search/SearchItem;->registerMode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v10, v11

    goto :goto_6

    :cond_8
    move v10, v11

    goto :goto_7

    :cond_9
    iget-object v9, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v9, v6}, Lcom/android/settings/search/SettingSearchManager;->addSearchInfoDB(Ljava/util/ArrayList;)V

    const-string v9, "SettingHeaderXmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xml Preference exception count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and Checking exception count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initTitleDB(Z)V
    .locals 23
    .param p1    # Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v18, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v3, v10, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->refer_settinginfo_db_for_titleinfo(Z)Ljava/util/ArrayList;

    move-result-object v14

    const-string v18, "SettingHeaderXmlParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " SEARCH MANAGER --> getItem size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    new-instance v16, Lcom/android/settings/search/SearchItem;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/search/SearchItem;-><init>()V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.android.settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    sget-object v18, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    :try_start_0
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v15, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_4

    :try_start_1
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v19, v0

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v19, v0

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPathAndRegisterMode(Ljava/lang/String;)Lcom/android/settings/search/SearchItem$PathAndRegisterMode;

    move-result-object v12

    iget-object v0, v12, Lcom/android/settings/search/SearchItem$PathAndRegisterMode;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/search/SearchItem;->registerMode:I

    move/from16 v18, v0

    iget v0, v12, Lcom/android/settings/search/SearchItem$PathAndRegisterMode;->registerMode:I

    move/from16 v19, v0

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings/search/SearchItem;->registerMode:I

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v19, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initTitleDB pakageName"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SettingSearchManager;->addTextInfoDB(Ljava/util/ArrayList;)V

    const-string v18, "SettingHeaderXmlParser"

    const-string v19, " SEARCH MANAGER --> finish text write"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    :goto_4
    const-string v19, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NotFoundException #1 : i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", searchItem.get(i).titleResId = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_3
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    :catch_2
    move-exception v7

    const-string v19, "SettingHeaderXmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NotFoundException #2 : i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", searchItem.get(i).summaryResId = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/search/SearchItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_2
.end method
