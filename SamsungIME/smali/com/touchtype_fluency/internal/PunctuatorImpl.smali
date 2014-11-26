.class public Lcom/touchtype_fluency/internal/PunctuatorImpl;
.super Ljava/lang/Object;
.source "PunctuatorImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/Punctuator;


# instance fields
.field private peer:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/internal/PunctuatorImpl;->peer:J

    return-void
.end method

.method private native getPredictionTriggerString()Ljava/lang/String;
.end method

.method public static native initIDs()V
.end method

.method private inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native punctuateInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method


# virtual methods
.method public addRules(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->addRules(Ljava/lang/String;)V

    return-void
.end method

.method public native addRules(Ljava/lang/String;)V
.end method

.method public native addRulesFromFile(Ljava/lang/String;)V
.end method

.method public native dispose()V
.end method

.method public getPredictionTrigger()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->getPredictionTriggerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getWordSeparator(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public punctuate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/touchtype_fluency/Punctuator$Action;
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->punctuateInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lcom/touchtype_fluency/Punctuator$Action;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/touchtype_fluency/Punctuator$Action;->values()[Lcom/touchtype_fluency/Punctuator$Action;

    move-result-object v3

    aget v4, v1, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public native removeRulesWithID(Ljava/lang/String;)V
.end method

.method public native resetRules()V
.end method
