.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final FlipFontAppList:[Ljava/lang/String;

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/com.android.settings/app_fonts/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/user/"

.field public static isFlipFontUsed:Z

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sStaticDefaults:[Landroid/graphics/Typeface;

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.*"

    aput-object v2, v0, v6

    const-string v2, "com.cooliris.media"

    aput-object v2, v0, v7

    const-string v2, "jp.co.omronsoft.openwnn"

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string v3, "com.monotypeimaging.*"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "sans-serif"

    aput-object v2, v0, v4

    const-string v2, "sans-serif-light"

    aput-object v2, v0, v6

    const-string v2, "sans-serif-thin"

    aput-object v2, v0, v7

    const-string v2, "sec-roboto-light"

    aput-object v2, v0, v5

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Typeface;->isAppInFlipList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, ""

    invoke-static {p0, v5}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-boolean v6, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    :goto_0
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-void

    :cond_0
    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    :cond_2
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    :cond_3
    :goto_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    goto/16 :goto_1

    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v3, v3, Landroid/graphics/Typeface;->native_instance:I

    if-nez v3, :cond_2

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_2

    :cond_5
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v3, v3, Landroid/graphics/Typeface;->native_instance:I

    if-nez v3, :cond_3

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_3
.end method

.method private static _create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_8

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_3

    move-object v2, p0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-nez v2, :cond_2

    :cond_5
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    if-eqz v2, :cond_6

    if-eqz p0, :cond_6

    iget-boolean v3, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v3, v2, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_6
    if-nez v1, :cond_7

    new-instance v1, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-nez p0, :cond_3

    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "default"

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14

    const-string v10, "default"

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v10, :cond_1

    const-string v10, "default"

    :cond_1
    return-object v10

    :pswitch_1
    const-string v8, ""

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eqz p0, :cond_2

    if-nez v2, :cond_2

    :cond_2
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    move-result v7

    :goto_1
    if-nez v2, :cond_6

    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    const-string v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1e
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v0, v1

    move-object v5, v6

    :cond_4
    :goto_2
    move-object v10, v9

    :try_start_5
    const-string v11, "persist.sys.flipfontpath"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v11, "FLIPFONT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "systemFont = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_3
    :try_start_6
    const-string v9, "default"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v11

    goto :goto_2

    :catch_4
    move-exception v3

    :goto_4
    :try_start_8
    const-string v9, "default"

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catch_5
    move-exception v11

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    :cond_5
    :goto_6
    throw v11

    :cond_6
    if-eqz v2, :cond_a

    :cond_7
    if-nez v7, :cond_b

    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    const-string v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_b
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1a
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v6, :cond_8

    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_8
    move-object v0, v1

    move-object v5, v6

    :cond_9
    :goto_7
    move-object v10, v9

    :try_start_f
    const-string v11, "persist.sys.flipfontpath"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v3

    const-string v11, "FLIPFONT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "systemFont = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/16 v11, 0x64

    if-ge v2, v11, :cond_7

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/user/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/com.android.settings/app_fonts/sans.loc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "empty"

    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_10
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v6, :cond_c

    :try_start_13
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_c
    move-object v0, v1

    move-object v5, v6

    :cond_d
    :goto_8
    move-object v10, v9

    goto/16 :goto_0

    :catch_7
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_7

    :catch_8
    move-exception v3

    :goto_9
    :try_start_14
    const-string v9, "default"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v5, :cond_9

    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_7

    :catch_9
    move-exception v11

    goto/16 :goto_7

    :catch_a
    move-exception v3

    :goto_a
    :try_start_16
    const-string v9, "default"

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v5, :cond_9

    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_7

    :catch_b
    move-exception v11

    goto/16 :goto_7

    :catchall_1
    move-exception v11

    :goto_b
    if-eqz v5, :cond_e

    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    :cond_e
    :goto_c
    throw v11

    :catch_c
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto :goto_8

    :catch_d
    move-exception v3

    :goto_d
    :try_start_19
    const-string v9, "default"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-eqz v5, :cond_d

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_8

    :catch_e
    move-exception v11

    goto :goto_8

    :catch_f
    move-exception v3

    :goto_e
    :try_start_1b
    const-string v9, "default"

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-eqz v5, :cond_d

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10

    goto :goto_8

    :catch_10
    move-exception v11

    goto :goto_8

    :catchall_2
    move-exception v11

    :goto_f
    if-eqz v5, :cond_f

    :try_start_1d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    :cond_f
    :goto_10
    throw v11

    :catch_11
    move-exception v11

    goto/16 :goto_1

    :catch_12
    move-exception v12

    goto/16 :goto_6

    :catch_13
    move-exception v12

    goto :goto_c

    :catch_14
    move-exception v12

    goto :goto_10

    :catchall_3
    move-exception v11

    move-object v5, v6

    goto :goto_f

    :catchall_4
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto :goto_f

    :catch_15
    move-exception v3

    move-object v5, v6

    goto :goto_e

    :catch_16
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_e

    :catch_17
    move-exception v3

    move-object v5, v6

    goto :goto_d

    :catch_18
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_d

    :catchall_5
    move-exception v11

    move-object v5, v6

    goto :goto_b

    :catchall_6
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto :goto_b

    :catch_19
    move-exception v3

    move-object v5, v6

    goto :goto_a

    :catch_1a
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_a

    :catch_1b
    move-exception v3

    move-object v5, v6

    goto :goto_9

    :catch_1c
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_9

    :catchall_7
    move-exception v11

    move-object v5, v6

    goto/16 :goto_5

    :catchall_8
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_5

    :catch_1d
    move-exception v3

    move-object v5, v6

    goto/16 :goto_4

    :catch_1e
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_4

    :catch_1f
    move-exception v3

    move-object v5, v6

    goto/16 :goto_3

    :catch_20
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static loadAppList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/graphics/Typeface;

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    return v0
.end method

.method public final isBold()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
