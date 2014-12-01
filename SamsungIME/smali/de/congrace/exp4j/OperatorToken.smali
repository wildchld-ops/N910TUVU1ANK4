.class Lde/congrace/exp4j/OperatorToken;
.super Lde/congrace/exp4j/CalculationToken;
.source "OperatorToken.java"


# instance fields
.field operation:Lde/congrace/exp4j/CustomOperator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/congrace/exp4j/CalculationToken;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    return-void
.end method

.method private getPrecedence()I
    .locals 1

    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v0, v0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    return v0
.end method

.method private isLeftAssociative()Z
    .locals 1

    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget-boolean v0, v0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    return v0
.end method


# virtual methods
.method varargs applyOperation([D)D
    .locals 2

    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    invoke-virtual {v0, p1}, Lde/congrace/exp4j/CustomOperator;->applyOperation([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lde/congrace/exp4j/OperatorToken;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lde/congrace/exp4j/OperatorToken;

    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    new-array v1, v2, [D

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    invoke-virtual {v2, v1}, Lde/congrace/exp4j/CustomOperator;->applyOperation([D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/congrace/exp4j/Token;

    if-eqz v0, :cond_3

    instance-of v2, v0, Lde/congrace/exp4j/OperatorToken;

    if-nez v2, :cond_0

    instance-of v2, v0, Lde/congrace/exp4j/FunctionToken;

    if-eqz v2, :cond_3

    :cond_0
    instance-of v2, v0, Lde/congrace/exp4j/FunctionToken;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lde/congrace/exp4j/OperatorToken;

    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->isLeftAssociative()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v2

    invoke-direct {v1}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v3

    if-gt v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/Token;

    invoke-virtual {v2}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->isLeftAssociative()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v2

    invoke-direct {v1}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/Token;

    invoke-virtual {v2}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
