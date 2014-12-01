.class public Landroid/server/spell/SpellScrollScanner;
.super Ljava/lang/Object;
.source "SpellScrollScanner.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SpellManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInformationHash:I

.field private mProhibitedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    iput-object p1, p0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/server/spell/SpellScrollScanner;->buildProhibitedPackageList()V

    return-void
.end method

.method private buildProhibitedPackageList()V
    .locals 7

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.stk"

    aput-object v6, v3, v5

    move-object v0, v3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getInformationHash()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll;

    invoke-virtual {v1, p1}, Landroid/app/SpellScroll;->getMatchedInstantSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_1
    monitor-exit p0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/SpellScroll;

    move-object v1, v0

    monitor-exit p0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized getSpellScrollList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    invoke-virtual {v2}, Landroid/app/SpellScroll;->getPriority()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    invoke-virtual {v2, p1}, Landroid/app/SpellScroll;->hasIngredientName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isValidSpellScroll(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scanSpellScrolls()V
    .locals 40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    const/16 v27, 0x280

    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v31

    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v29

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v33, v0

    const/16 v36, 0x0

    aput-object v4, v33, v36

    const/16 v36, 0x1

    aput-object v31, v33, v36

    const/16 v36, 0x2

    aput-object v29, v33, v36

    move-object/from16 v5, v33

    array-length v0, v5

    move/from16 v18, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_f

    aget-object v19, v5, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/4 v15, 0x1

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_4

    const/4 v6, 0x0

    :goto_2
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    const/16 v16, 0x1

    :goto_3
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_6

    const/4 v15, 0x1

    :cond_1
    :goto_4
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    :goto_5
    if-nez v15, :cond_0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_0

    :cond_2
    const/16 v34, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v6, v2}, Landroid/app/SpellScroll;->getMetaData(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;IZ)Landroid/app/SpellScroll;

    move-result-object v34

    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_3

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll META_DATA found in ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/SpellScroll;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v36

    if-eqz v36, :cond_b

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll parsing failed in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_7
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1

    const/4 v6, 0x1

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_8

    const/16 v16, 0x1

    :goto_6
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_9

    const/4 v15, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_5

    :cond_b
    :try_start_1
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_c

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]<=>["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto/16 :goto_0

    :cond_f
    new-instance v28, Landroid/content/Intent;

    const-string v36, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v36, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v36, 0x200

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_12

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_13

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v13, :cond_10

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_10

    :cond_11
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/SpellScroll;

    if-eqz v14, :cond_10

    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->setDisabled()V

    goto :goto_8

    :cond_12
    const/4 v13, 0x0

    goto :goto_9

    :cond_13
    const/4 v14, 0x0

    goto :goto_a

    :cond_14
    if-eqz v14, :cond_15

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    const/16 v36, 0x2

    move/from16 v0, v36

    if-eq v8, v0, :cond_10

    :cond_15
    const/16 v34, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14}, Landroid/app/SpellScroll;->createPseudoSpellScroll(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/app/SpellScroll;

    move-result-object v34

    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_16

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Pseudo SpellScroll has been created for ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/SpellScroll;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v36

    if-eqz v36, :cond_17

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v7

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Pseudo SpellScroll creation failed in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :cond_17
    :try_start_3
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_18

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]<=>["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_8

    :cond_19
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    :cond_1a
    const/4 v12, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/SpellScroll;

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->hashCode()I

    move-result v36

    xor-int v12, v12, v36

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/SpellScroll$Spell;

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1d

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    new-instance v37, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1d
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_1c

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/http/message/BasicNameValuePair;

    if-eqz v25, :cond_1c

    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Duplicated spell id found!!! "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " <=> "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1e
    monitor-enter p0

    :try_start_4
    move-object/from16 v0, p0

    iput v12, v0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v36

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v36
.end method
