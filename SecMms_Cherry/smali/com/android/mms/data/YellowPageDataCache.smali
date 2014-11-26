.class public Lcom/android/mms/data/YellowPageDataCache;
.super Ljava/lang/Object;
.source "YellowPageDataCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/YellowPageCache"

.field private static sInstance:Lcom/android/mms/data/YellowPageDataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/data/YellowPageDataCache;->sInstance:Lcom/android/mms/data/YellowPageDataCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/data/YellowPageDataCache;
    .locals 1

    sget-object v0, Lcom/android/mms/data/YellowPageDataCache;->sInstance:Lcom/android/mms/data/YellowPageDataCache;

    return-object v0
.end method


# virtual methods
.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public isYPNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    return-void
.end method
