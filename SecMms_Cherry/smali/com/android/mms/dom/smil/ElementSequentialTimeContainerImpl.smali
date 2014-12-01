.class public abstract Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementSequentialTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v3}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v3

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public getDur()F
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v2

    cmpl-float v4, v2, v5

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/high16 v4, -0x40800000

    :goto_1
    return v4

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1
.end method
