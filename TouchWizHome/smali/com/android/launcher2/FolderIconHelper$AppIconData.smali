.class Lcom/android/launcher2/FolderIconHelper$AppIconData;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconData"
.end annotation


# static fields
.field public static final COL_CNT:I = 0x3

.field public static final ROW_CNT:I = 0x2


# instance fields
.field private APP_ICON_SCALE_FACTOR:F

.field private APP_ICON_SIZE:I

.field public EMPTY_BITMAP:Landroid/graphics/Bitmap;

.field private FOLDER_ICON_RECT:Landroid/graphics/Rect;

.field private NORMAL_ICON_SCALE_FACTOR:F

.field private NORMAL_ICON_SIZE:I

.field public OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OPEN_FOLDER_BITMAP_HIGHLIGHT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OPEN_FOLDER_BITMAP_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public miniIconGap:I

.field public miniIconHeight:F

.field public miniIconWidth:F

.field private offsetY:I

.field private plateOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 8
    .param p1    # Landroid/content/res/Resources;

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    const v2, 0x7f020073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    const v2, 0x7f020075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    const v2, 0x7f020079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    const v2, 0x7f02007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    const v2, 0x7f020077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    const v2, 0x7f020074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    const v2, 0x7f020076

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    const v2, 0x7f02007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    const v2, 0x7f02007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    const v2, 0x7f020078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    const v2, 0x7f0200d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    const v2, 0x7f0200d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    const v2, 0x7f0200d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    const v2, 0x7f0200d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    const v2, 0x7f0200d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const v1, 0x7f0d000d

    invoke-virtual {p1, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    const v1, 0x7f0d000e

    invoke-virtual {p1, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SCALE_FACTOR:F

    const v1, 0x7f0c00ad

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    const v1, 0x7f0c0003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SIZE:I

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconWidth:F

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconHeight:F

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconWidth:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconGap:I

    const v1, 0x7f0c003d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->offsetY:I

    const v1, 0x7f0c003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->plateOffsetY:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SCALE_FACTOR:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SIZE:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderIconHelper$AppIconData;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderGradationDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/util/List;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # I

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_LIST:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getBitmap(Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private getOpenFolderGradationDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_DRAWABLE_GRADATION_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # I

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_LIST:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getBitmap(Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAppIconXYCord(I)[F
    .locals 6
    .param p1    # I

    const/4 v3, 0x2

    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 v2, p1, 0x3

    if-le v2, v3, :cond_0

    const/4 v2, 0x2

    :cond_0
    new-array v1, v3, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconWidth:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconGap:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconHeight:F

    iget v5, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    aput v4, v1, v3

    return-object v1
.end method

.method public getFolderContentHeight()F
    .locals 2

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconWidth:F

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconGap:I

    mul-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getFolderContentWidth()F
    .locals 2

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconWidth:F

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->miniIconGap:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getFolderPaddingTop()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->offsetY:I

    int-to-float v0, v0

    return v0
.end method

.method public getFolderPlateOffsetY()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->plateOffsetY:I

    int-to-float v0, v0

    return v0
.end method
