.class public Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;
.super Ljava/lang/Object;
.source "UmlautMapFactory.java"


# instance fields
.field private mIsSwiftKeyMode:Z

.field private mUmlautMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x40a00000

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mIsSwiftKeyMode:Z

    return-void
.end method

.method private getUmlautMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getUmlautMapSet()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mIsSwiftKeyMode:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapForSwiftKey;->getUmlautMap()[Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    move-result-object v3

    :goto_0
    const-string v2, ""

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/umlaut/UmlautMap;->getUmlautMap()[Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->getUmlautMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    return-object v4
.end method
