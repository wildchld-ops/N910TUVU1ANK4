.class public Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;
.super Ljava/lang/Object;
.source "SecondaryKeyMapFactory.java"


# instance fields
.field private mSecondaryKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
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

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getSecondaryKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getSecondaryKeyMapSet()Landroid/util/SparseArray;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v7

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v8

    const/16 v12, 0x1e0

    if-ne v7, v12, :cond_1

    const/16 v12, 0x140

    if-ne v8, v12, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v12, 0xa00

    if-ne v7, v12, :cond_2

    const/16 v12, 0x640

    if-ne v8, v12, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/16 v12, 0x500

    if-ne v7, v12, :cond_3

    const/16 v12, 0x320

    if-ne v8, v12, :cond_3

    const/4 v5, 0x1

    :goto_2
    const/16 v12, 0x400

    if-ne v7, v12, :cond_4

    const/16 v12, 0x258

    if-ne v8, v12, :cond_4

    const/4 v3, 0x1

    :goto_3
    const/16 v12, 0x320

    if-ne v7, v12, :cond_5

    const/16 v12, 0x1e0

    if-ne v8, v12, :cond_5

    const/4 v4, 0x1

    :goto_4
    const/16 v12, 0x3c0

    if-ne v7, v12, :cond_6

    const/16 v12, 0x21c

    if-ne v8, v12, :cond_6

    const/4 v1, 0x1

    :goto_5
    const/4 v9, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMap()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v6, 0x0

    :goto_6
    array-length v12, v10

    if-ge v6, v12, :cond_8

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    :cond_0
    :goto_7
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v12

    aget-object v13, v10, v6

    invoke-virtual {v9, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    if-eq v11, v12, :cond_0

    iget-object v12, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v9

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    goto :goto_7

    :cond_8
    if-nez v0, :cond_9

    if-nez v4, :cond_9

    if-eqz v1, :cond_c

    :cond_9
    const/4 v11, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForSmallScreen()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v10

    const/4 v6, 0x0

    :goto_8
    array-length v12, v10

    if-ge v6, v12, :cond_12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    :cond_a
    :goto_9
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v12

    aget-object v13, v10, v6

    invoke-virtual {v9, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    if-eq v11, v12, :cond_a

    iget-object v12, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v9

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    goto :goto_9

    :cond_c
    if-nez v2, :cond_d

    if-nez v5, :cond_d

    if-eqz v3, :cond_12

    :cond_d
    const/4 v11, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForTablet()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v10

    const/4 v6, 0x0

    :goto_a
    array-length v12, v10

    if-ge v6, v12, :cond_12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    :cond_e
    :goto_b
    const/high16 v12, 0x61720000

    if-ne v11, v12, :cond_11

    if-nez v5, :cond_f

    if-eqz v2, :cond_11

    :cond_f
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_10
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    if-eq v11, v12, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v9

    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v11

    goto :goto_b

    :cond_11
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v12

    aget-object v13, v10, v6

    invoke-virtual {v9, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_12
    iget-object v12, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v12, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-object v12
.end method
