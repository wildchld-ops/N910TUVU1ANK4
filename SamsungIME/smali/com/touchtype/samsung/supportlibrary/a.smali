.class final Lcom/touchtype/samsung/supportlibrary/a;
.super Lcom/touchtype/samsung/supportlibrary/SupportLibrary;


# static fields
.field protected static a:Lcom/touchtype_fluency/LoggingListener;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;


# instance fields
.field private d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/LoggingListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;-><init>()V

    sput-object p1, Lcom/touchtype/samsung/supportlibrary/a;->a:Lcom/touchtype_fluency/LoggingListener;

    return-void
.end method

.method public static a(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->c:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    if-nez v0, :cond_0

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/a;

    invoke-direct {v0, p0}, Lcom/touchtype/samsung/supportlibrary/a;-><init>(Lcom/touchtype_fluency/LoggingListener;)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/a;->c:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    :cond_0
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->c:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    return-object v0
.end method


# virtual methods
.method public final buildHeatMap(Ljava/io/File;IILcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "requestedWidth should be greater than 0 for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_1

    move v0, v1

    :goto_1
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "requestedHeight should be greater than 0 for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "keyPressModelFile should not be null for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "keyPressModelFile should exist for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "keyPressModelFile should be able to be read for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    move v0, v1

    :goto_3
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "HeatMapProgressListener should not be null for buildHeatMap"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    :goto_4
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v2, "Label separator should not be null for buildHeatMap"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;-><init>(Ljava/io/File;Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/a;->d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public final cancelBuildHeatMap()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/a;->d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/a;->d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->cancelBuild()V

    :cond_0
    return-void
.end method

.method public final getAdjacentErrorCorrection(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "jsonPath should not be null for getAdjacentErrorCorrection"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v2, "jsonPath should not be empty for getAdjacentErrorCorrection"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final getMyWordList()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;
    .locals 1

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->getInstance()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    move-result-object v0

    return-object v0
.end method

.method public final isKoreanInitialOnly(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "verbatim is null for isKoreanInitialOnly"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_1

    :goto_1
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v2, "minChars should be greater than zero for isKoreanInitialOnly"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->isKoreanInitialOnly(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final reorderPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;ZZ)Lcom/touchtype_fluency/Predictions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v4, "verbatim is null for reorderPredictions"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    :goto_1
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/a;->b:Ljava/lang/String;

    const-string v2, "predictions is null for reorderPredictions"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p4}, Lcom/touchtype/samsung/supportlibrary/initialinput/InitialInput;->promoteInitialExpandedPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;Z)Lcom/touchtype_fluency/Predictions;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
