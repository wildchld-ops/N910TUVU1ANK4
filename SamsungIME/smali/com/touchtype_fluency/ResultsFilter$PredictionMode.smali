.class public final enum Lcom/touchtype_fluency/ResultsFilter$PredictionMode;
.super Ljava/lang/Enum;
.source "ResultsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/ResultsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/ResultsFilter$PredictionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

.field public static final enum CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

.field public static final enum RETROSPECTIVE_CORRECT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    const-string v1, "CURRENT_WORD_PREDICT"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    const-string v1, "RETROSPECTIVE_CORRECT"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->RETROSPECTIVE_CORRECT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->RETROSPECTIVE_CORRECT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/ResultsFilter$PredictionMode;
    .locals 1

    const-class v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/ResultsFilter$PredictionMode;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    return-object v0
.end method
