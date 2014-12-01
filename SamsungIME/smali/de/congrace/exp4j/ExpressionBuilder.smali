.class public Lde/congrace/exp4j/ExpressionBuilder;
.super Ljava/lang/Object;
.source "ExpressionBuilder.java"


# static fields
.field public static final PROPERTY_UNARY_HIGH_PRECEDENCE:Ljava/lang/String; = "exp4j.unary.precedence.high"


# instance fields
.field private final builtInOperators:Ljava/util/Map;
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

.field private final customFunctions:Ljava/util/Map;
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

.field private customOperators:Ljava/util/Map;
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

.field private expression:Ljava/lang/String;

.field private final highUnaryPrecedence:Z

.field private final validOperatorSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expression can not be empty!."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    const-string v0, "exp4j.unary.precedence.high"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "exp4j.unary.precedence.high"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->highUnaryPrecedence:Z

    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinFunctions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinOperators()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getValidOperators()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->validOperatorSymbols:Ljava/util/List;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkVariableName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    const/16 v3, 0x5f

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_0

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_1

    new-instance v2, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid variable name: character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_1

    new-instance v2, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid variable name: character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getBuiltinFunctions()Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v3, Lde/congrace/exp4j/ExpressionBuilder$8;

    const-string v22, "abs"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$8;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v4, Lde/congrace/exp4j/ExpressionBuilder$9;

    const-string v22, "acos"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$9;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v5, Lde/congrace/exp4j/ExpressionBuilder$10;

    const-string v22, "asin"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$10;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v6, Lde/congrace/exp4j/ExpressionBuilder$11;

    const-string v22, "atan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$11;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v7, Lde/congrace/exp4j/ExpressionBuilder$12;

    const-string v22, "cbrt"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$12;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v8, Lde/congrace/exp4j/ExpressionBuilder$13;

    const-string v22, "ceil"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$13;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v9, Lde/congrace/exp4j/ExpressionBuilder$14;

    const-string v22, "cos"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$14;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v10, Lde/congrace/exp4j/ExpressionBuilder$15;

    const-string v22, "cosh"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$15;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v13, Lde/congrace/exp4j/ExpressionBuilder$16;

    const-string v22, "exp"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$16;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v14, Lde/congrace/exp4j/ExpressionBuilder$17;

    const-string v22, "expm1"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$17;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v15, Lde/congrace/exp4j/ExpressionBuilder$18;

    const-string v22, "floor"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$18;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v16, Lde/congrace/exp4j/ExpressionBuilder$19;

    const-string v22, "log"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$19;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v17, Lde/congrace/exp4j/ExpressionBuilder$20;

    const-string v22, "sin"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$20;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v18, Lde/congrace/exp4j/ExpressionBuilder$21;

    const-string v22, "sinh"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$21;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v19, Lde/congrace/exp4j/ExpressionBuilder$22;

    const-string v22, "sqrt"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$22;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v20, Lde/congrace/exp4j/ExpressionBuilder$23;

    const-string v22, "tan"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$23;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v21, Lde/congrace/exp4j/ExpressionBuilder$24;

    const-string v22, "tanh"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$24;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v22, "abs"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "acos"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "asin"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "atan"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "cbrt"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "ceil"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "cos"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "cosh"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "exp"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "expm1"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "floor"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "log"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "sin"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "sinh"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "sqrt"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "tan"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "tanh"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lde/congrace/exp4j/InvalidCustomFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v12

    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22
.end method

.method private getBuiltinOperators()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;"
        }
    .end annotation

    new-instance v7, Lde/congrace/exp4j/ExpressionBuilder$1;

    const-string v2, "+"

    invoke-direct {v7, p0, v2}, Lde/congrace/exp4j/ExpressionBuilder$1;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v12, Lde/congrace/exp4j/ExpressionBuilder$2;

    const-string v2, "-"

    invoke-direct {v12, p0, v2}, Lde/congrace/exp4j/ExpressionBuilder$2;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    new-instance v8, Lde/congrace/exp4j/ExpressionBuilder$3;

    const-string v2, "/"

    const/4 v3, 0x3

    invoke-direct {v8, p0, v2, v3}, Lde/congrace/exp4j/ExpressionBuilder$3;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;I)V

    new-instance v10, Lde/congrace/exp4j/ExpressionBuilder$4;

    const-string v2, "*"

    const/4 v3, 0x3

    invoke-direct {v10, p0, v2, v3}, Lde/congrace/exp4j/ExpressionBuilder$4;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;I)V

    new-instance v9, Lde/congrace/exp4j/ExpressionBuilder$5;

    const-string v2, "%"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v9, p0, v2, v3, v4}, Lde/congrace/exp4j/ExpressionBuilder$5;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZI)V

    new-instance v0, Lde/congrace/exp4j/ExpressionBuilder$6;

    const-string v2, "\'"

    const/4 v3, 0x0

    iget-boolean v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->highUnaryPrecedence:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    :goto_0
    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/congrace/exp4j/ExpressionBuilder$6;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZII)V

    new-instance v1, Lde/congrace/exp4j/ExpressionBuilder$7;

    const-string v3, "^"

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lde/congrace/exp4j/ExpressionBuilder$7;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZII)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v2, "+"

    invoke-interface {v11, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "-"

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "*"

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/"

    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\'"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "^"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "%"

    invoke-interface {v11, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :cond_0
    const/4 v4, 0x5

    goto :goto_0
.end method

.method private getValidOperators()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lde/congrace/exp4j/Calculable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnknownFunctionException;,
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/CustomOperator;

    const/4 v0, 0x0

    :goto_0
    iget-object v4, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->validOperatorSymbols:Ljava/util/List;

    iget-object v5, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid symbol for an operator please choose from: !,#,\u00a7,$,&,;,:,~,<,>,|,="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lde/congrace/exp4j/ExpressionBuilder;->checkVariableName(Ljava/lang/String;)V

    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Variable \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' cannot have the same name as a function"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    iget-object v5, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    iget-object v5, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    iget-object v6, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    iget-object v7, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    invoke-static {v4, v5, v6, v7}, Lde/congrace/exp4j/RPNConverter;->toRPNExpression(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lde/congrace/exp4j/RPNExpression;

    move-result-object v4

    return-object v4
.end method

.method public withCustomFunction(Lde/congrace/exp4j/CustomFunction;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2

    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    iget-object v1, p1, Lde/congrace/exp4j/CustomFunction;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withCustomFunctions(Ljava/util/Collection;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/congrace/exp4j/CustomFunction;

    invoke-virtual {p0, v0}, Lde/congrace/exp4j/ExpressionBuilder;->withCustomFunction(Lde/congrace/exp4j/CustomFunction;)Lde/congrace/exp4j/ExpressionBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withExpression(Ljava/lang/String;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 0

    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    return-object p0
.end method

.method public withOperation(Lde/congrace/exp4j/CustomOperator;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2

    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    iget-object v1, p1, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withOperations(Ljava/util/Collection;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/congrace/exp4j/CustomOperator;

    invoke-virtual {p0, v1}, Lde/congrace/exp4j/ExpressionBuilder;->withOperation(Lde/congrace/exp4j/CustomOperator;)Lde/congrace/exp4j/ExpressionBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withVariable(Ljava/lang/String;D)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2

    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs withVariableNames([Ljava/lang/String;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 6

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withVariables(Ljava/util/Map;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method
