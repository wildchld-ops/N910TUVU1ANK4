.class public Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;
.super Ljava/lang/Object;
.source "AccentCombinationMapFactory.java"


# instance fields
.field private mCombinedKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x40a00000

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    return-void
.end method

.method private getAccentCombinationMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getAccentCombinationMapSet()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/accent/AccentCombinationMap;->getAccentCombinationMap()[Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;

    move-result-object v0

    const-string v4, ""

    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    const-string v5, "0x%04x0x%04x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v0, v1

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getAccentKey()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v0, v1

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getNormalKey()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v5, v0, v1

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->getAccentCombinationMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->mCombinedKeyMapSet:Ljava/util/HashMap;

    return-object v5
.end method
