.class Lde/congrace/exp4j/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# instance fields
.field private final functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;"
        }
    .end annotation
.end field

.field private final variableNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

    iput-object p2, p0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    iput-object p3, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    return-void
.end method

.method private isDigitOrDecimalSeparator(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFunction(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNotationSeparator(C)Z
    .locals 1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOperatorCharacter(C)Z
    .locals 4

    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOperatorStart(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVariable(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getTokens(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnparsableExpressionException;,
            Lde/congrace/exp4j/UnknownFunctionException;
        }
    .end annotation

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_17

    aget-char v3, v4, v7

    const/16 v23, 0x20

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v23

    if-eqz v23, :cond_6

    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_2
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    add-int v23, v7, v13

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isDigitOrDecimalSeparator(C)Z

    move-result v23

    if-eqz v23, :cond_1

    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    add-int v23, v7, v13

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isNotationSeparator(C)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v12, :cond_2

    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    const-string v24, "Number can have only one notation separator \'e/E\'"

    invoke-direct/range {v23 .. v24}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_2
    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_5

    add-int v23, v7, v13

    aget-char v23, v4, v23

    const/16 v24, 0x2d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    add-int v23, v7, v13

    aget-char v23, v4, v23

    const/16 v24, 0x2b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    :cond_4
    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v23, v13, -0x1

    add-int v7, v7, v23

    new-instance v9, Lde/congrace/exp4j/NumberToken;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/NumberToken;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v23

    if-nez v23, :cond_7

    const/16 v23, 0x5f

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    :goto_5
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    add-int v23, v7, v14

    aget-char v23, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isLetter(C)Z

    move-result v23

    if-nez v23, :cond_8

    add-int v23, v7, v14

    aget-char v23, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_8

    add-int v23, v7, v14

    aget-char v23, v4, v23

    const/16 v24, 0x5f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    :cond_8
    add-int/lit8 v15, v14, 0x1

    add-int v23, v7, v14

    aget-char v23, v4, v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v15

    goto :goto_5

    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lde/congrace/exp4j/Tokenizer;->isVariable(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    new-instance v9, Lde/congrace/exp4j/VariableToken;

    invoke-direct {v9, v10}, Lde/congrace/exp4j/VariableToken;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lde/congrace/exp4j/Tokenizer;->isFunction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    new-instance v9, Lde/congrace/exp4j/FunctionToken;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lde/congrace/exp4j/CustomFunction;

    move-object/from16 v0, v23

    invoke-direct {v9, v10, v0}, Lde/congrace/exp4j/FunctionToken;-><init>(Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;)V

    goto/16 :goto_4

    :cond_b
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    :cond_c
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_d

    new-instance v9, Lde/congrace/exp4j/FunctionSeparatorToken;

    invoke-direct {v9}, Lde/congrace/exp4j/FunctionSeparatorToken;-><init>()V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/congrace/exp4j/Tokenizer;->isOperatorCharacter(C)Z

    move-result v23

    if-eqz v23, :cond_10

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    :goto_6
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    add-int v23, v7, v14

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isOperatorCharacter(C)Z

    move-result v23

    if-eqz v23, :cond_e

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int v24, v7, v14

    aget-char v24, v4, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isOperatorStart(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    add-int v23, v7, v14

    aget-char v23, v4, v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    new-instance v9, Lde/congrace/exp4j/OperatorToken;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lde/congrace/exp4j/CustomOperator;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Lde/congrace/exp4j/OperatorToken;-><init>(Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;)V

    goto/16 :goto_4

    :cond_f
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    :cond_10
    const/16 v23, 0x28

    move/from16 v0, v23

    if-ne v3, v0, :cond_11

    add-int/lit8 v16, v16, 0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-ne v3, v0, :cond_12

    add-int/lit8 v17, v17, 0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_13

    add-int/lit8 v18, v18, 0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const/16 v23, 0x29

    move/from16 v0, v23

    if-ne v3, v0, :cond_14

    add-int/lit8 v16, v16, -0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_15

    add-int/lit8 v17, v17, -0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const/16 v23, 0x5d

    move/from16 v0, v23

    if-ne v3, v0, :cond_16

    add-int/lit8 v18, v18, -0x1

    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_16
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    :cond_17
    if-nez v17, :cond_18

    if-eqz v16, :cond_1e

    const/16 v23, 0x1

    move/from16 v24, v23

    :goto_7
    if-eqz v18, :cond_1f

    const/16 v23, 0x1

    :goto_8
    or-int v23, v23, v24

    if-eqz v23, :cond_20

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "There are "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-eqz v16, :cond_19

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched parantheses "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :cond_19
    if-eqz v17, :cond_1b

    if-nez v6, :cond_1a

    const-string v23, " and "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched curly brackets "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :cond_1b
    if-eqz v18, :cond_1d

    if-nez v6, :cond_1c

    const-string v23, " and "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched square brackets "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :cond_1d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "in expression \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_1e
    const/16 v23, 0x0

    move/from16 v24, v23

    goto/16 :goto_7

    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_8

    :cond_20
    return-object v21
.end method
