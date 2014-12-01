.class public Lcom/android/mms/poi/PoiReflector;
.super Ljava/lang/Object;
.source "PoiReflector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/PoiReflector"

.field private static sPoiDataInitializerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sPoiEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sPoiParserClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiEngineClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiParserClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiDataInitializerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractPoiString(Landroid/app/Activity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "com.android.mms.poi.POIParser"

    invoke-static {v2}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/mms/poi/PoiReflector;->sPoiParserClass:Ljava/lang/Class;

    sget-object v2, Lcom/android/mms/poi/PoiReflector;->sPoiParserClass:Ljava/lang/Class;

    const-string v3, "hasPoiData"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private static getPoiDataInitializerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiDataInitializerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.android.mms.poi.PoiDataInitializer"

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiDataInitializerClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiDataInitializerClass:Ljava/lang/Class;

    return-object v0
.end method

.method private static getPoiEngineClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiEngineClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.android.poijni.PoiEngine"

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiEngineClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/android/mms/poi/PoiReflector;->sPoiEngineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/poi/PoiReflector;->getPoiDataInitializerClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "doProcessing"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v0, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
