.class public Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILMediaElement;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final SMIL_MEDIA_END_EVENT:Ljava/lang/String; = "SmilMediaEnd"

.field public static final SMIL_MEDIA_PAUSE_EVENT:Ljava/lang/String; = "SmilMediaPause"

.field public static final SMIL_MEDIA_SEEK_EVENT:Ljava/lang/String; = "SmilMediaSeek"

.field public static final SMIL_MEDIA_START_EVENT:Ljava/lang/String; = "SmilMediaStart"

.field private static final TAG:Ljava/lang/String; = "Mms:smil"


# instance fields
.field mElementTime:Lorg/w3c/dom/smil/ElementTime;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/android/mms/dom/smil/SmilDocumentImpl;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    move-result v0

    return v0
.end method

.method public getAbstractAttr()Ljava/lang/String;
    .locals 1

    const-string v0, "abstract"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getClipBegin()Ljava/lang/String;
    .locals 1

    const-string v0, "clipBegin"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClipEnd()Ljava/lang/String;
    .locals 1

    const-string v0, "clipEnd"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    const-string v0, "copyright"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getLongdesc()Ljava/lang/String;
    .locals 1

    const-string v0, "longdesc"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    const-string v0, "port"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadIndex()Ljava/lang/String;
    .locals 1

    const-string v0, "readIndex"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRestart()S

    move-result v0

    return v0
.end method

.method public getRtpformat()Ljava/lang/String;
    .locals 1

    const-string v0, "rtpformat"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStripRepeat()Ljava/lang/String;
    .locals 1

    const-string v0, "stripRepeat"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V

    return-void
.end method

.method public resumeElement()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V

    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V

    return-void
.end method

.method public setAbstractAttr(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "abstract"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .param p1    # Lorg/w3c/dom/smil/TimeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setClipBegin(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "clipBegin"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClipEnd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "clipEnd"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "copyright"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDur(F)V
    .locals 1
    .param p1    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setDur(F)V

    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .param p1    # Lorg/w3c/dom/smil/TimeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    return-void
.end method

.method public setFill(S)V
    .locals 1
    .param p1    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFill(S)V

    return-void
.end method

.method public setFillDefault(S)V
    .locals 1
    .param p1    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFillDefault(S)V

    return-void
.end method

.method public setLongdesc(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "port"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadIndex(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "readIndex"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRepeatCount(F)V
    .locals 1
    .param p1    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatCount(F)V

    return-void
.end method

.method public setRepeatDur(F)V
    .locals 1
    .param p1    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatDur(F)V

    return-void
.end method

.method public setRestart(S)V
    .locals 1
    .param p1    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRestart(S)V

    return-void
.end method

.method public setRtpformat(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "rtpformat"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStripRepeat(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "stripRepeat"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "transport"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
