.class Lcom/android/keyguard/sec/WeatherImageArchiveFactory;
.super Ljava/lang/Object;
.source "WeatherImageArchiveFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "Cmaweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/CmaWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/CmaWeatherImageArchive;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "kweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/sec/AccuWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/AccuWeatherImageArchive;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "weathernewsjp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/keyguard/sec/JPWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/AccuWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/AccuWeatherImageArchive;-><init>()V

    goto :goto_0
.end method
