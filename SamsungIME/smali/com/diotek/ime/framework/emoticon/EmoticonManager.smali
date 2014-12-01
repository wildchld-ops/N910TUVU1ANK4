.class public Lcom/diotek/ime/framework/emoticon/EmoticonManager;
.super Ljava/lang/Object;
.source "EmoticonManager.java"


# static fields
.field public static final EMOTICON_CATEGORY_1:I = 0x0

.field public static final EMOTICON_CATEGORY_2:I = 0x1

.field public static final EMOTICON_CATEGORY_3:I = 0x2

.field public static final EMOTICON_CATEGORY_4:I = 0x3

.field public static final EMOTICON_CATEGORY_5:I = 0x4

.field public static final EMOTICON_CATEGORY_6:I = 0x5

.field private static sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;


# instance fields
.field private final RESOLUTION_FHD:I

.field private final RESOLUTION_HD:I

.field private final RESOLUTION_HVGA:I

.field private final RESOLUTION_QHD:I

.field private final RESOLUTION_QVGA:I

.field private final RESOLUTION_WQXGA:I

.field private final RESOLUTION_WSVGA:I

.field private final RESOLUTION_WVGA:I

.field private final RESOLUTION_WXGA:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEmoticonMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_FHD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_HD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_QHD:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WVGA:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_QVGA:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_HVGA:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WXGA:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WQXGA:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WSVGA:I

    return-void
.end method

.method private getConvertedCategory(I)I
    .locals 6

    const/4 v5, 0x6

    invoke-direct {p0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->getResolution()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    move-object v2, v0

    :goto_0
    packed-switch p1, :pswitch_data_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :pswitch_0
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    move-object v2, v1

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x0

    aget v3, v2, v5

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x1

    aget v3, v2, v5

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x2

    aget v3, v2, v5

    goto :goto_1

    :pswitch_4
    const/4 v5, 0x3

    aget v3, v2, v5

    goto :goto_1

    :pswitch_5
    const/4 v5, 0x4

    aget v3, v2, v5

    goto :goto_1

    :pswitch_6
    const/4 v5, 0x5

    aget v3, v2, v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/emoticon/EmoticonManager;
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getResolution()I
    .locals 8

    const/16 v7, 0x500

    const/16 v6, 0x320

    const/16 v5, 0x1e0

    const/16 v4, 0x140

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x780

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x438

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v7, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x21c

    if-ne v2, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v6, :cond_4

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v5, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_5

    const/4 v1, 0x5

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v4, :cond_6

    const/4 v1, 0x6

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v7, :cond_7

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v6, :cond_7

    const/4 v1, 0x7

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0xa00

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x640

    if-ne v2, v3, :cond_8

    const/16 v1, 0x8

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x400

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x258

    if-ne v2, v3, :cond_0

    const/16 v1, 0x9

    goto :goto_0
.end method


# virtual methods
.method public getCategoryByKeyCode(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x149 -> :sswitch_6
        -0x148 -> :sswitch_5
        -0x147 -> :sswitch_4
        -0x146 -> :sswitch_3
        -0x145 -> :sswitch_2
        -0x144 -> :sswitch_1
        -0x87 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEmoticonMap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmoticonMapByCategory(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->getConvertedCategory(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final initialize()V
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->setEmoticonMap()V

    return-void
.end method

.method public setEmoticonMap()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {}, Lcom/diotek/ime/framework/emoticon/EmoticonMap;->getEmoticonMap()[Lcom/diotek/ime/framework/emoticon/EmoticonInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->getCategoryID()I

    move-result v0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->getEmoticonCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
