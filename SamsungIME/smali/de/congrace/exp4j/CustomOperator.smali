.class public abstract Lde/congrace/exp4j/CustomOperator;
.super Ljava/lang/Object;
.source "CustomOperator.java"


# instance fields
.field final leftAssociative:Z

.field final operandCount:I

.field final precedence:I

.field final symbol:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    iput p2, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    iput p3, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZII)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    iput p3, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    if-ne p4, v0, :cond_0

    :goto_0
    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected abstract applyOperation([D)D
.end method
