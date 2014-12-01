.class public abstract Lcom/android/mms/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/events/EventTarget;


# instance fields
.field private final mChildNodes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTarget:Lorg/w3c/dom/events/EventTarget;

.field mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

.field private mParentNode:Lorg/w3c/dom/Node;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    new-instance v0, Lcom/android/mms/dom/events/EventTargetImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/dom/events/EventTargetImpl;-><init>(Lorg/w3c/dom/events/EventTarget;)V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    return-void
.end method

.method private setParentNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 3

    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 3

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 3

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    invoke-direct {p1, v1}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    invoke-direct {p1, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    move-object v0, p2

    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    return-object p2

    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Old child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
