.class public abstract Lcom/touchtype/samsung/supportlibrary/SupportLibrary;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;
    .locals 1

    invoke-static {p0}, Lcom/touchtype/samsung/supportlibrary/a;->a(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.1-build32"

    return-object v0
.end method


# virtual methods
.method public abstract buildHeatMap(Ljava/io/File;IILcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract cancelBuildHeatMap()V
.end method

.method public abstract getAdjacentErrorCorrection(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;
.end method

.method public abstract isKoreanInitialOnly(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract reorderPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;ZZ)Lcom/touchtype_fluency/Predictions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
