.class public Lcom/android/settings/settingssearch/SettingsSearchXmlParser;
.super Ljava/lang/Object;
.source "SettingsSearchXmlParser.java"


# static fields
.field private static final DBG:Z

.field private static mContext:Landroid/content/Context;

.field private static mParentKey:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

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
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SettingSearch/SettingsSearchXmlParser"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mExceptionCount:I

    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mCheckingExceptionCount:I

    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    return-void
.end method

.method private getParentNameForTabView(I)Ljava/lang/String;
    .locals 5

    const-string v3, ""

    new-instance v2, Lcom/android/settings/HeaderListManager;

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_1

    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_0

    sget-object v4, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    aget-object v3, v4, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    const/4 v1, 0x0

    :goto_3
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_4

    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_3

    sget-object v4, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    aget-object v3, v4, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-object v3
.end method


# virtual methods
.method public getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v6, Lcom/android/settings/HeaderListManager;

    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v14, "preference-headers"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v14, "SettingSearch/SettingsSearchXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v1

    :cond_3
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_c

    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v14, "header"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v11, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v11}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v14, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    const/4 v14, 0x0

    iput v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    if-eqz v12, :cond_7

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_6

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    :cond_6
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_a

    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    int-to-long v14, v14

    iput-wide v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    :cond_7
    :goto_2
    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getParentNameForTabView(I)Ljava/lang/String;

    move-result-object p2

    const-string v14, ""

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    sget-object p2, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mParentKey:Ljava/lang/String;

    :cond_8
    :goto_3
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    const-string v14, "com.android.settings"

    iput-object v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    iget v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v14

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v14

    :cond_a
    :try_start_3
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v14, Ljava/lang/String;

    iput-object v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_2

    :cond_b
    sput-object p2, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mParentKey:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_c
    if-eqz v9, :cond_2

    goto/16 :goto_0
.end method

.method public getPreferencesScreenItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v13, "PreferenceScreen"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v5

    :try_start_1
    const-string v13, "SettingSearch/SettingsSearchXmlParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v1

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_12

    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v13, "PreferenceCategory"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "com.android.settings.ProgressCategory"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "com.android.settings.UnclickablePreference"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v11, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v11}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {v13, v3, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    :goto_2
    if-ltz v6, :cond_b

    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_6
    :goto_3
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :pswitch_1
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v13

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v13

    :pswitch_2
    :try_start_3
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    iget-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-wide v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    const/4 v13, -0x1

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    iget-wide v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-wide v14, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    :goto_4
    iget-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    if-nez v13, :cond_6

    const-string v13, ""

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_4

    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, 0x7f040205

    if-ne v13, v14, :cond_6

    const/4 v13, 0x3

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto/16 :goto_3

    :cond_b
    const-string v13, "CheckBoxPreference"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x2

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    :goto_5
    const-string v13, "com.android.settings"

    iput-object v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    if-nez v4, :cond_c

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_c
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_d
    const-string v13, "SwitchPreferenceScreen"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "com.android.settings.SettingsSwitchPreference"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_e
    const/4 v13, 0x1

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    :cond_f
    const-string v13, "com.android.settings.SwitchPreferenceScreen"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x0

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    :cond_10
    const/4 v13, 0x1

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    :cond_11
    const/4 v13, 0x0

    iput v13, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_12
    if-eqz v9, :cond_2

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
