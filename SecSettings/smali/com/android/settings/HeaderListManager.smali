.class public Lcom/android/settings/HeaderListManager;
.super Ljava/lang/Object;
.source "HeaderListManager.java"


# static fields
.field public static final DRAWER_GROUP_BY_CATEGORY_ID:[[I

.field public static final DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

.field public static final DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

.field public static final TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;


# instance fields
.field private SUB_SETTINGS_FOR_FAVORITE:[I

.field private favoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private pos:I

.field private prevCountOfFavorites:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f0b07b2

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f0b0739

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f0b074b

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f0b07b7

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f0b07b8

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const v2, 0x7f0b07a4

    aput v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f0b0739

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f0b074b

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f0b07b2

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f0b0739

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Conncetions"

    aput-object v1, v0, v3

    const-string v1, "My deivices"

    aput-object v1, v0, v4

    const-string v1, "Controls"

    aput-object v1, v0, v5

    const-string v1, "General"

    aput-object v1, v0, v6

    const-string v1, "Applications"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b074b
        0x7f0b001b
    .end array-data

    :array_1
    .array-data 4
        0x7f0b001a
        0x7f0b07b1
    .end array-data

    :array_2
    .array-data 4
        0x7f0b07a3
        0x7f0b07a4
    .end array-data

    :array_3
    .array-data 4
        0x7f0b001a
        0x7f0b07b1
    .end array-data

    :array_4
    .array-data 4
        0x7f0b07a3
        0x7f0b07a4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->SUB_SETTINGS_FOR_FAVORITE:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    iput v2, p0, Lcom/android/settings/HeaderListManager;->prevCountOfFavorites:I

    iput v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    iput-object p1, p0, Lcom/android/settings/HeaderListManager;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/settings/HeaderListManager;->prevCountOfFavorites:I

    iput v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b001f
        0x7f0b0020
        0x7f0b0021
        0x7f0b07b0
        0x7f0b0022
        0x7f0b0023
        0x7f0b0024
    .end array-data
.end method

.method private removeEmptyCategory(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v4, v3

    const/4 v1, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeGridListCategory(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v4

    const v4, 0x7f0b0021

    if-ne v2, v4, :cond_3

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/HeaderListManager;->SUB_SETTINGS_FOR_FAVORITE:[I

    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const v4, 0x7f0b07b0

    if-ne v2, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateHeaderListByType(ILjava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_0

    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_4

    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v7}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getFavoriteCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/settings/HeaderListManager;->pos:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/settings/HeaderListManager;->pos:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/HeaderListManager;->updateHeaderListByType(ILjava/util/List;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    invoke-direct {p0, p1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/settings/HeaderListManager;->pos:I

    return v0
.end method

.method public loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/Utils;->loadFavorite(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    return-void
.end method
