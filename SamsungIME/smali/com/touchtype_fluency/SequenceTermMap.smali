.class public Lcom/touchtype_fluency/SequenceTermMap;
.super Ljava/lang/Object;
.source "SequenceTermMap.java"


# instance fields
.field private final seq:Lcom/touchtype_fluency/Sequence;

.field private final termMap:[Lcom/touchtype_fluency/TermPosition;


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/Sequence;[Lcom/touchtype_fluency/TermPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    iput-object p2, p0, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/touchtype_fluency/SequenceTermMap;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/touchtype_fluency/SequenceTermMap;

    iget-object v1, p0, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p1, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/Sequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    iget-object v2, p1, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getSeq()Lcom/touchtype_fluency/Sequence;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    return-object v0
.end method

.method public getTermMap()[Lcom/touchtype_fluency/TermPosition;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x95

    iget-object v1, p0, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/touchtype_fluency/SequenceTermMap;->termMap:[Lcom/touchtype_fluency/TermPosition;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "seq: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/touchtype_fluency/SequenceTermMap;->seq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", termMap: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
