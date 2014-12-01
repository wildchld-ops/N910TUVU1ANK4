.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngine.java"


# static fields
.field private static final MODELS_WA38:Ljava/lang/String; = "/system/wakeupdata/samsung/models_wa38.bin"

.field private static final SUBTAG:Ljava/lang/String; = "secMM: "

.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngine"

.field private static final UDTSID_ENROLL_CNT:S = 0x4s

.field private static final UDTSID_NUM_USERS:S = 0x5s

.field private static final UDTSIDnetfile:Ljava/lang/String; = "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

.field private static final UDTSIDsearchfile:Ljava/lang/String; = "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

.field public static VERSION_MAJOR:I = 0x0

.field public static VERSION_MINOR:I = 0x0

.field private static m_strFPSVnet:Ljava/lang/String; = null

.field private static m_strFPSVsearch:Ljava/lang/String; = null

.field private static m_strFPSVsvsid:Ljava/lang/String; = null

.field private static m_strLanguage:Ljava/lang/String; = null

.field private static m_strResourceDir:Ljava/lang/String; = null

.field private static final udtsvsidfile:Ljava/lang/String; = "/system/wakeupdata/sensory/svsid_1_1.raw"


# instance fields
.field private m_lSessionValue:J

.field private m_lSessionValueFPSV:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-void
.end method

.method private GetLanguageIndex()I
    .locals 5

    const/4 v1, 0x1

    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "GetLanguageIndex, m_strLanguage is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetLanguage(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    :cond_0
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ko_kr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_gb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "fr_fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "de_de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "it_it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x7

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "zh_cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x8

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ja_jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_0

    :cond_a
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ru_ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v1, 0xa

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "pt_br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, 0xb

    goto/16 :goto_0

    :cond_c
    const-string v2, "SensoryUDTSIDEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetLanguageIndex, strLanguage is unknown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private SetFPSVResource()Z
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v6, 0xc

    new-array v2, v6, [[Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_ko_kr.raw"

    aput-object v7, v6, v4

    const-string v7, "search_ko_kr.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_ko_kr.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v4

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_gb.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_gb.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_gb.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_es.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_es.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_es.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v11

    const/4 v6, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_fr_fr.raw"

    aput-object v8, v7, v4

    const-string v8, "search_fr_fr.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_fr_fr.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_de_de.raw"

    aput-object v8, v7, v4

    const-string v8, "search_de_de.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_de_de.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x7

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_it_it.raw"

    aput-object v8, v7, v4

    const-string v8, "search_it_it.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_it_it.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x8

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_zh_cn.raw"

    aput-object v8, v7, v4

    const-string v8, "search_zh_cn.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_zh_cn.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x9

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ja_jp.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ja_jp.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ja_jp.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xa

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ru_ru.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ru_ru.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ru_ru.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xb

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_pt_br.raw"

    aput-object v8, v7, v4

    const-string v8, "search_pt_br.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_pt_br.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    invoke-direct {p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->GetLanguageIndex()I

    move-result v0

    const-string v3, "higalaxy_"

    sget v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v6, v11, :cond_0

    const-string v3, "okgoogle_"

    :cond_0
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV recog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV search : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV ubm : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v5, "SensoryUDTSIDEngine"

    const-string v6, "SetResourceforFPSV, m_strResourceDir is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    move v4, v5

    goto/16 :goto_0
.end method

.method public static init()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Trying to load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SensoryUDTSIDEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Loading libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "WARNING: libSensoryUDTSIDEngine Could not load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public native CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public GetFWVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native GetVersion()Ljava/lang/String;
.end method

.method public native GetWakeUpModel(IS)Ljava/lang/String;
.end method

.method public native SetLanguage(I)V
.end method

.method public SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    sput-object p2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    return-void
.end method

.method public SetSessionValueFPSV(J)V
    .locals 3

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-void
.end method

.method public SetSessionValueUDT(J)V
    .locals 3

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-void
.end method

.method public SetVersion(Ljava/lang/String;)V
    .locals 4

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native SetWakeUpMode(I)V
.end method

.method public native SetWakeUpType(I)V
.end method

.method public native checkNewRecordings(JS)I
.end method

.method public native checkNewRecordings(JSI)I
.end method

.method public checkResultEnroll(SS)I
    .locals 9

    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkResultEnroll, enrollIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v6, :cond_0

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v7, :cond_0

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v3, :cond_5

    :cond_0
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_1

    if-ne v2, v6, :cond_1

    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_FPSV"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    :cond_1
    move v0, v2

    :cond_2
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_3

    if-ne v2, v6, :cond_3

    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_UDT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSG: checkResultEnroll, ResultUDT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ResultFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v6, :cond_6

    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_6
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v7, :cond_4

    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public closeModels()V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: closeModels, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    :cond_0
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    :cond_1
    return-void
.end method

.method public native closeRecog(J)V
.end method

.method public native closeSession(J)V
.end method

.method public consistencyCheckEnroll(S[SI)I
    .locals 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sget v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v5, v6, :cond_1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    :goto_0
    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v5, v6, :cond_2

    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_2

    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JS)I

    move-result v1

    :goto_1
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll.result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CommandNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getFeedbackDetails(JS)[J

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    int-to-short v6, v4

    aput-short v6, p2, v5

    :cond_0
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll, Feedback details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v0, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3, p1, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JSI)I

    move-result v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public deleteModel(Ljava/lang/String;S)I
    .locals 5

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: deleteModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "deleteModel, trig is ZERO!. need to load model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->deleteUser(JS)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: deleteModel, re-doEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native deleteUser(JS)I
.end method

.method public doCombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "VSG: doCombineModel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v6, "wa38"

    :goto_0
    const/4 v7, 0x0

    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v1, v3, :cond_1

    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v2, 0x47

    if-gt v1, v2, :cond_1

    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "CombineModel is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    const-string v6, "pc36"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const-string p1, ""

    const-string p2, ""

    :cond_3
    if-eqz p3, :cond_4

    if-nez p4, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    const-string p3, ""

    const-string p4, ""

    :cond_5
    if-le v7, v3, :cond_6

    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "File path is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public native doEnroll(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public doEnrollModel(Ljava/lang/String;S)I
    .locals 5

    const/4 v4, 0x1

    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: doEnrollModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-ne p2, v4, :cond_0

    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wa38"

    :cond_0
    :goto_0
    sget v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v1, v4, :cond_2

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    :cond_1
    const-string v0, "pc36"

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public native getFeedbackDetails(JS)[J
.end method

.method public native getPhraseQuality(JS)F
.end method

.method public native getResultEnroll(JSS)I
.end method

.method public native getResultTest(JILjava/lang/String;)I
.end method

.method public getSessionValue()J
    .locals 4

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-wide v0
.end method

.method public getSessionValueFPSV()J
    .locals 4

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-wide v0
.end method

.method public native initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J
.end method

.method public native initSession()J
.end method

.method public loadModels(Ljava/lang/String;S)I
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetFPSVResource()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    :cond_0
    :goto_0
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadModels, m_lSessionValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_lSessionValueFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    sget-object v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    sget-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    sget-object v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v12, 0x1

    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

    const-string v4, "/system/wakeupdata/sensory/svsid_1_1.raw"

    const-string v5, "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v12, 0x1

    :cond_2
    :goto_2
    return v12

    :cond_3
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    goto :goto_1

    :cond_5
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    goto/16 :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    goto :goto_2

    :cond_7
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public native loadUsers(JS)I
.end method

.method public native pipeRecogEnroll(J[SJ)I
.end method

.method public native pipeRecogTest(J[SJ)I
.end method

.method public processEnroll([SI)I
    .locals 7

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v2, :cond_0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v0, :cond_3

    :cond_0
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    :cond_1
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    :cond_2
    :goto_0
    return v6

    :cond_3
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v1, :cond_4

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_0

    :cond_4
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v2, :cond_2

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_0
.end method

.method public processVerify([SILjava/lang/String;[S)I
    .locals 9

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processVerify , trig is ZERO, terminate to verify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0xc

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogTest(J[SJ)I

    move-result v7

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultTest(JILjava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v8

    aget-short v0, p4, v8

    if-ltz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_1
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: processVerify, pipeRecogTest, nRecogResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public native resetRecog(J)V
.end method

.method public setSessionValue(JJ)V
    .locals 3

    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    iput-wide p3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-void
.end method
