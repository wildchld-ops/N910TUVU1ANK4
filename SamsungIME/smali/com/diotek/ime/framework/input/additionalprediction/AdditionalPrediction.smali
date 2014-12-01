.class public Lcom/diotek/ime/framework/input/additionalprediction/AdditionalPrediction;
.super Ljava/lang/Object;
.source "AdditionalPrediction.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionalPrediction(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v5, 0xd7

    const/16 v4, 0xf7

    :try_start_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {v6, p0}, Lde/congrace/exp4j/ExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lde/congrace/exp4j/ExpressionBuilder;->build()Lde/congrace/exp4j/Calculable;

    move-result-object v0

    invoke-interface {v0}, Lde/congrace/exp4j/Calculable;->calculate()D

    move-result-wide v1

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "#.##"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v6

    const/4 v6, 0x0

    goto :goto_0
.end method
