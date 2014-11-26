.class public abstract Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    invoke-direct {v0, p0}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    :cond_1
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->a:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/a;

    return-object v0
.end method


# virtual methods
.method public abstract chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
