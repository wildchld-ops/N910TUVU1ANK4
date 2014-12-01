.class public Landroid/webkitsec/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;

.field private static mIdsArray:[I

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkitsec/L10nUtils;->mIdsArray:[I

    return-void

    :array_0
    .array-data 4
        0x10405f6
        0x10405f7
        0x10405f8
        0x10405f9
        0x10405fa
        0x10405fb
        0x10405fc
        0x10405fd
        0x10405fe
        0x10405ff
        0x1040600
        0x1040601
        0x1040602
        0x1040603
        0x1040604
        0x1040605
        0x1040606
        0x1040607
        0x1040608
        0x1040609
        0x104060a
        0x104060b
        0x104060c
        0x104060d
        0x104060e
        0x104060f
        0x1040610
        0x1040611
        0x1040612
        0x1040613
        0x1040614
        0x1040615
        0x1040616
        0x1040617
        0x1040618
        0x1040619
        0x104061a
        0x104061b
        0x104061c
        0x104061d
        0x104061e
        0x104061f
        0x1040620
        0x1040621
        0x1040622
        0x1040623
        0x1040624
        0x1040625
        0x1040626
        0x1040627
        0x1040628
        0x1040629
        0x104062a
        0x104062b
        0x104062c
        0x104062d
        0x104062e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 4

    sget-object v2, Landroid/webkitsec/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/webkitsec/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/webkitsec/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/webkitsec/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadString(I)Ljava/lang/String;
    .locals 4

    sget-object v1, Landroid/webkitsec/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/webkitsec/L10nUtils;->mIdsArray:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/webkitsec/L10nUtils;->mStrings:Ljava/util/Map;

    :cond_0
    sget-object v1, Landroid/webkitsec/L10nUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/webkitsec/L10nUtils;->mIdsArray:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/L10nUtils;->mApplicationContext:Landroid/content/Context;

    return-void
.end method
