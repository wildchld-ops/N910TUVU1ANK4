.class public Lcom/touchtype_fluency/TagSelectors;
.super Ljava/lang/Object;
.source "TagSelectors.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    new-instance v0, Lcom/touchtype_fluency/TagSelectors$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/TagSelectors$1;-><init>()V

    return-object v0
.end method

.method public static disabledModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "disabled"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "dynamic"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static enabledModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "enabled"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static filePath(Ljava/io/File;)Lcom/touchtype_fluency/TagSelector;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->filePath(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static filePath(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static liveLanguageModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "ll"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static noModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    new-instance v0, Lcom/touchtype_fluency/TagSelectors$2;

    invoke-direct {v0}, Lcom/touchtype_fluency/TagSelectors$2;-><init>()V

    return-object v0
.end method

.method public static persistentDynamicModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "persistent"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static staticModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "static"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method

.method public static taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/touchtype_fluency/TagSelector;"
        }
    .end annotation

    new-instance v0, Lcom/touchtype_fluency/internal/TaggedWithSelector;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/internal/TaggedWithSelector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    const-string v0, "temporary"

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    return-object v0
.end method
