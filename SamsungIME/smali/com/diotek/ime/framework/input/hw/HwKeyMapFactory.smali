.class public Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;
.super Ljava/lang/Object;
.source "HwKeyMapFactory.java"


# instance fields
.field private mKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhonepadKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    const/high16 v1, 0x40a00000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    return-void
.end method

.method private getHwKeyMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private getHwPhonepadKeyMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getHwKeyMapSet()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyCodeMap()[I

    move-result-object v0

    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyMap()[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    move-result-object v1

    const-string v5, ""

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_3

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getKeyIndex()I

    move-result v3

    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    array-length v6, v0

    if-ge v3, v6, :cond_1

    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwKeyMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    return-object v6
.end method

.method public getHwPhonepadKeyMapSet()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyCodeMap()[I

    move-result-object v0

    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwPhonepadKeyMap()[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    move-result-object v1

    const-string v5, ""

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_3

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getKeyIndex()I

    move-result v3

    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    array-length v6, v0

    if-ge v3, v6, :cond_1

    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwPhonepadKeyMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    return-object v6
.end method
