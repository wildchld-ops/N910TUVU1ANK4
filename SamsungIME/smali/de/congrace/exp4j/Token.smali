.class abstract Lde/congrace/exp4j/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/congrace/exp4j/Token;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/congrace/exp4j/Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method abstract mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
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
.end method
