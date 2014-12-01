.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementParallelTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# static fields
.field private static final ENDSYNC_ALL:Ljava/lang/String; = "all"

.field private static final ENDSYNC_ATTRIBUTE_NAME:Ljava/lang/String; = "endsync"

.field private static final ENDSYNC_FIRST:Ljava/lang/String; = "first"

.field private static final ENDSYNC_LAST:Ljava/lang/String; = "last"

.field private static final ENDSYNC_MEDIA:Ljava/lang/String; = "media"


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;
    .locals 6

    move-object v3, p1

    const/4 v2, 0x0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    instance-of v5, v3, Lorg/w3c/dom/smil/ElementTime;

    if-eqz v5, :cond_1

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/smil/ElementTime;

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 22

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_5

    const-wide/16 v14, 0x0

    const/4 v2, 0x0

    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_1

    invoke-interface {v5, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_0

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_0

    move-wide/from16 v14, v16

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_3

    invoke-interface {v10, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_2

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_2

    move-wide/from16 v14, v16

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    check-cast v6, Lorg/w3c/dom/Node;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    new-instance v18, Lcom/android/mms/dom/NodeListImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v18
.end method

.method public getDur()F
    .locals 2

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "endsync"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    const-string v0, "last"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    const-string v0, "last"

    goto :goto_0
.end method

.method public getImplicitDuration()F
    .locals 10

    const/high16 v2, -0x40800000

    const-string v8, "last"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {v5, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getTimeType()I

    move-result v8

    if-nez v8, :cond_0

    const/high16 v8, -0x40800000

    :goto_2
    return v8

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    double-to-float v3, v8

    cmpl-float v8, v3, v2

    if-lez v8, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v8, v2

    goto :goto_2
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported endsync value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
