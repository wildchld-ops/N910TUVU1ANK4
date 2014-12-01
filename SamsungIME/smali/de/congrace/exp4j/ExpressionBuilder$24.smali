.class Lde/congrace/exp4j/ExpressionBuilder$24;
.super Lde/congrace/exp4j/CustomFunction;
.source "ExpressionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/congrace/exp4j/ExpressionBuilder;


# direct methods
.method constructor <init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder$24;->this$0:Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {p0, p2}, Lde/congrace/exp4j/CustomFunction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs applyFunction([D)D
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v0

    return-wide v0
.end method
