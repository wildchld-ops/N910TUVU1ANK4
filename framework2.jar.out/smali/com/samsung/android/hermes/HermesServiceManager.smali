.class public Lcom/samsung/android/hermes/HermesServiceManager;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hermes/HermesServiceManager$3;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;,
        Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;,
        Lcom/samsung/android/hermes/HermesServiceManager$PatternType;,
        Lcom/samsung/android/hermes/HermesServiceManager$AppType;,
        Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    }
.end annotation


# static fields
.field private static final DIVIDER:Ljava/lang/String; = ","

.field private static EVENT_PERIOD:I = 0x0

.field public static final GET_LINKS:I = 0x1

.field public static final GET_TAGS:I = 0x4

.field private static final HERMES_EVENT:I = 0x1

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final JSON_CONTENTS:Ljava/lang/String; = "contents"

.field private static final JSON_EVENT:I = 0x2

.field public static final RECOMMAND_APP:I = 0x10

.field public static final RECOMMAND_CONTENTS:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/hermes/IKerykeion;

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "HermesServiceManager"

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->urlPattern:Ljava/util/regex/Pattern;

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->emailPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/hermes/HermesServiceManager;->EVENT_PERIOD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "HermesServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hermes/HermesServiceManager;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->hoverFilter(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hermes/HermesServiceManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->clickFilter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method private varargs analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/hermes/HermesServiceManager;->checkParamValidation(II[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v7, 0x0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v3, v7

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " key : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$1;

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hermes/HermesServiceManager$1;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/hermes/IKerykeion;->setIKerykeionCallBack(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/hermes/HermesServiceManager;->makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/hermes/IKerykeion;->start(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionRequest;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private varargs checkParamValidation(II[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x1

    if-eq v4, p1, :cond_0

    const/16 v4, 0x8

    if-eq v4, p1, :cond_0

    const/16 v4, 0x9

    if-eq v4, p1, :cond_0

    const/4 v4, 0x4

    if-eq v4, p1, :cond_0

    const/16 v4, 0x10

    if-ne v4, p1, :cond_2

    :cond_0
    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available request type"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, p2, 0x1f

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available request pattern type"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    if-eqz p3, :cond_4

    array-length v4, p3

    if-gtz v4, :cond_4

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request source is empty."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request Type is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request Pattern Type is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v0, p3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    instance-of v4, v3, Landroid/net/Uri;

    if-nez v4, :cond_5

    instance-of v4, v3, Lcom/samsung/android/hermes/object/HermesObject;

    if-eqz v4, :cond_6

    :cond_5
    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available sources"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request source is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    return-void
.end method

.method private clickFilter(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v1

    aget-object v0, v1, p1

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " JSON DATA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/hermes/KerykeionResult;

    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v3

    aget-object v13, v2, v3

    if-nez v16, :cond_2

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Set event period."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/samsung/android/hermes/HermesServiceManager;->EVENT_PERIOD:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v6, v2

    :cond_1
    const/16 v16, 0x1

    :cond_2
    if-nez v18, :cond_3

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAccuracy()F

    move-result v2

    cmpg-float v2, v11, v2

    if-gez v2, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAccuracy()F

    move-result v11

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_5
    const/16 v18, 0x1

    :cond_6
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v16, :cond_8

    if-nez v18, :cond_9

    :cond_8
    if-nez v16, :cond_9

    if-eqz v17, :cond_e

    :cond_9
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    new-instance v2, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    if-nez v14, :cond_b

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v8, :cond_c

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_c
    :try_start_0
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v10

    goto :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getAppType(Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;)Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    .locals 2

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$3;->$SwitchMap$com$samsung$android$hermes$HermesServiceManager$AnalyzerResultType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->contact:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->email:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->browser:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->map:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->news:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_text:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getLinkifyToPatternType(I)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/16 v1, 0x1d

    :goto_0
    return v1

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    and-int/lit8 v1, p0, 0x5a

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    and-int/lit8 v1, p0, 0x6a

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x1e

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_4

    and-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_4

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x4

    :cond_5
    and-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_6

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit8 v0, v0, 0x8

    :cond_7
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x2

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method private static getPatternTpAnalyzerResultType(I)Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized getService()Lcom/samsung/android/hermes/IKerykeion;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-nez v0, :cond_0

    const-string v0, "hermesservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    invoke-interface {v0}, Lcom/samsung/android/hermes/IKerykeion;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hermesservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    :cond_1
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hoverFilter(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v1

    aget-object v0, v1, p1

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Hotkeyword:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-static {p2}, Lcom/samsung/android/hermes/HermesServiceManager;->getPatternTpAnalyzerResultType(I)Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeJson(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hermes/KerykeionResult;

    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v12

    aget-object v5, v10, v12

    invoke-direct {p0, v5}, Lcom/samsung/android/hermes/HermesServiceManager;->getAppType(Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;)Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->isPossibleToShow()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v5, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v5, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/util/List;

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v12, v4}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {p0, v10, v12, v13}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {p0, v10, v12, v13}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x2

    invoke-direct {p0, p1, v11, v10}, Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-gtz v10, :cond_6

    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v12, "App array length is zero"

    invoke-static {v10, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    :goto_2
    return-object v10

    :cond_6
    :try_start_0
    const-string v10, "contents"

    invoke-virtual {v3, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " JSON DATA : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private varargs makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;
    .locals 8

    new-instance v3, Lcom/samsung/android/hermes/KerykeionRequest;

    invoke-direct {v3}, Lcom/samsung/android/hermes/KerykeionRequest;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/hermes/object/HermesObject;

    invoke-direct {v1}, Lcom/samsung/android/hermes/object/HermesObject;-><init>()V

    move-object v0, p3

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_0

    instance-of v7, v5, Landroid/net/Uri;

    if-eqz v7, :cond_2

    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v7, v5, Lcom/samsung/android/hermes/object/HermesObject;

    if-eqz v7, :cond_1

    invoke-virtual {v1, v5}, Lcom/samsung/android/hermes/object/HermesObject;->setObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1, v6, p2, v1}, Lcom/samsung/android/hermes/KerykeionRequest;->setRequestData(ILjava/util/List;ILcom/samsung/android/hermes/object/HermesObject;)V

    return-object v3
.end method

.method private startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not get the hermes service."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-eqz v2, :cond_0

    new-instance v1, Lcom/samsung/android/hermes/KerykeionPosition;

    invoke-direct {v1, p2}, Lcom/samsung/android/hermes/KerykeionPosition;-><init>(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-interface {v2, p1, v1}, Lcom/samsung/android/hermes/IKerykeion;->show(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public analysis(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public analysis(ILjava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public analysis(ILjava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public analysis(ILjava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_0

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public dismissHermes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not get the hermes service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hermes/IKerykeion;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hermes/HermesServiceManager;->getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "analysis"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/hermes/HermesServiceManager;->getLinkifyToPatternType(I)I

    move-result v9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v9, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->checkParamValidation(II[Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " View Id : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$2;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p5

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/hermes/HermesServiceManager$2;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/hermes/IKerykeion;->setIKerykeionCallBack(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v10, Lcom/samsung/android/hermes/KerykeionPosition;

    invoke-direct {v10, p4}, Lcom/samsung/android/hermes/KerykeionPosition;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v9, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;

    move-result-object v0

    invoke-interface {v2, v3, v0, v10}, Lcom/samsung/android/hermes/IKerykeion;->start(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionRequest;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setHermesCallBack(Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    return-void
.end method

.method public showHermes(Lcom/samsung/android/hermes/KerykeionResult;Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kResult is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is wrong."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v12, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->emailPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    :cond_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->urlPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_5

    new-instance v1, Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/hermes/KerykeionResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V

    if-eqz v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to find adaptable parsing data"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showHermes(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kResultList is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public training(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not get the hermes service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hermes/IKerykeion;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
