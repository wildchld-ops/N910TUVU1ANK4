.class public Lcom/touchtype_fluency/CodepointRange;
.super Ljava/lang/Object;
.source "CodepointRange.java"


# instance fields
.field private final begin:I

.field private final end:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/touchtype_fluency/CodepointRange;->begin:I

    iput p2, p0, Lcom/touchtype_fluency/CodepointRange;->end:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/touchtype_fluency/CodepointRange;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to construct a CodepointRange from string: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " code points, must be exactly one code point long"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    new-instance v1, Lcom/touchtype_fluency/CodepointRange;

    invoke-direct {v1, v0, v0}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/CodepointRange;->begin:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/CodepointRange;->end:I

    return v0
.end method
