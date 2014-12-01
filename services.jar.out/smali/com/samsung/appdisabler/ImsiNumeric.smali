.class public Lcom/samsung/appdisabler/ImsiNumeric;
.super Ljava/lang/Object;
.source "ImsiNumeric.java"


# instance fields
.field private imsiNumericBase:Ljava/lang/String;

.field private imsiRangeEnd:Ljava/lang/String;

.field private imsiRangeStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImsiNumericBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiRangeEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImsiRangeStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    return-object v0
.end method

.method public setImsiNumericBase(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsiRangeEnd(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsiRangeStart(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiNumericBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
