.class public Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;
.super Ljava/lang/Object;
.source "ShortCutKeyMapFactory.java"


# instance fields
.field private mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getAlternativeShortCutKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method

.method private getShortCutKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getAlternativeShortCutKeyMapSet()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMap;->getAlternativeShortCutKeyMap()[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    :cond_0
    :goto_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getShortCutKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    return-object v4
.end method

.method public getShortCutKeyMapSet()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMap;->getShortCutKeyMap()[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    :cond_0
    :goto_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getShortCutKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    return-object v4
.end method
