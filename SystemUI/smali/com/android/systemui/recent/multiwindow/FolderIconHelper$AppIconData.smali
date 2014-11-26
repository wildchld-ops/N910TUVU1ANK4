.class Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindow/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconData"
.end annotation


# instance fields
.field private APP_ICON_CALIGN:F

.field public APP_ICON_HEIGHT:I

.field private APP_ICON_RALIGN:F

.field public APP_ICON_SCALE_FACTOR:F

.field public APP_ICON_WIDTH:I

.field public EMPTY_BITMAP:Landroid/graphics/Bitmap;

.field private FOLDER_ICON_RECT:Landroid/graphics/Rect;

.field public NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field public OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field public OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

.field public mIconPositions:[[[F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6
    .param p1    # Landroid/content/res/Resources;

    const/4 v5, 0x0

    const/4 v3, 0x1

    const v2, 0x7f02009f

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    iput v3, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    const v1, 0x7f0d010c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_HEIGHT:I

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_WIDTH:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getAppIconPositions(Landroid/content/res/Resources;)[[[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getIconCordFromRes(Landroid/content/res/Resources;I)F
    .locals 2
    .param p1    # Landroid/content/res/Resources;
    .param p2    # I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->resolveValue(F)F

    move-result v0

    return v0
.end method

.method private resolveValue(F)F
    .locals 4
    .param p1    # F

    const/4 v1, 0x1

    const-wide v2, 0x3e7ad7f29abcaf48L

    # getter for: Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->CENTER_ALIGN_VAL:I
    invoke-static {}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->access$100()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    :cond_0
    iget p1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    :cond_1
    :goto_0
    return p1

    :cond_2
    # getter for: Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->RIGHT_ALIGN_VAL:I
    invoke-static {}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->access$200()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    :cond_3
    iget p1, p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    goto :goto_0
.end method


# virtual methods
.method public getAppIconPositions(Landroid/content/res/Resources;)[[[F
    .locals 65
    .param p1    # Landroid/content/res/Resources;

    const v60, 0x7f0d00f8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v3

    const v60, 0x7f0d00f9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v4

    const v60, 0x7f0d00fa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v5

    const v60, 0x7f0d00fb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v6

    const v60, 0x7f0d00fc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v7

    const v60, 0x7f0d00fd

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v8

    const v60, 0x7f0d00fe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v9

    const v60, 0x7f0d00ff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v10

    const v60, 0x7f0d0100

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v11

    const v60, 0x7f0d0101

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v12

    const v60, 0x7f0d0102

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v13

    const v60, 0x7f0d0103

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v14

    const v60, 0x7f0d0104

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v15

    const v60, 0x7f0d0105

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v16

    const v60, 0x7f0d0106

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v17

    const v60, 0x7f0d0107

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v18

    const v60, 0x7f0d0108

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v19

    const v60, 0x7f0d0109

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v20

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v21

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v22

    const v60, 0x7f0d0104

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v23

    const v60, 0x7f0d0105

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v24

    const v60, 0x7f0d0106

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v25

    const v60, 0x7f0d0107

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v26

    const v60, 0x7f0d0108

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v27

    const v60, 0x7f0d0109

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v28

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v29

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v30

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v31

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v32

    const v60, 0x7f0d0104

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v33

    const v60, 0x7f0d0105

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v34

    const v60, 0x7f0d0106

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v35

    const v60, 0x7f0d0107

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v36

    const v60, 0x7f0d0108

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v37

    const v60, 0x7f0d0109

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v38

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v39

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v40

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v41

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v42

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v43

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v44

    const v60, 0x7f0d0104

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v45

    const v60, 0x7f0d0105

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v46

    const v60, 0x7f0d0106

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v47

    const v60, 0x7f0d0107

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v48

    const v60, 0x7f0d0108

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v49

    const v60, 0x7f0d0109

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v50

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v51

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v52

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v53

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v54

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v55

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v56

    const v60, 0x7f0d010a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v57

    const v60, 0x7f0d010b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v58

    const/16 v60, 0x7

    move/from16 v0, v60

    new-array v0, v0, [[[F

    move-object/from16 v59, v0

    const/16 v60, 0x0

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v3, v63, v64

    const/16 v64, 0x1

    aput v4, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x1

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v5, v63, v64

    const/16 v64, 0x1

    aput v6, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v7, v63, v64

    const/16 v64, 0x1

    aput v8, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0x3

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v9, v63, v64

    const/16 v64, 0x1

    aput v10, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v11, v63, v64

    const/16 v64, 0x1

    aput v12, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v13, v63, v64

    const/16 v64, 0x1

    aput v14, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x4

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v15, v63, v64

    const/16 v64, 0x1

    aput v16, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v17, v63, v64

    const/16 v64, 0x1

    aput v18, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v19, v63, v64

    const/16 v64, 0x1

    aput v20, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v21, v63, v64

    const/16 v64, 0x1

    aput v22, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x5

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v23, v63, v64

    const/16 v64, 0x1

    aput v24, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v25, v63, v64

    const/16 v64, 0x1

    aput v26, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v27, v63, v64

    const/16 v64, 0x1

    aput v28, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v29, v63, v64

    const/16 v64, 0x1

    aput v30, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v31, v63, v64

    const/16 v64, 0x1

    aput v32, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x6

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v33, v63, v64

    const/16 v64, 0x1

    aput v34, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v35, v63, v64

    const/16 v64, 0x1

    aput v36, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v37, v63, v64

    const/16 v64, 0x1

    aput v38, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v39, v63, v64

    const/16 v64, 0x1

    aput v40, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v41, v63, v64

    const/16 v64, 0x1

    aput v42, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v43, v63, v64

    const/16 v64, 0x1

    aput v44, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x7

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v45, v63, v64

    const/16 v64, 0x1

    aput v46, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v47, v63, v64

    const/16 v64, 0x1

    aput v48, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v49, v63, v64

    const/16 v64, 0x1

    aput v50, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v51, v63, v64

    const/16 v64, 0x1

    aput v52, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v53, v63, v64

    const/16 v64, 0x1

    aput v54, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v55, v63, v64

    const/16 v64, 0x1

    aput v56, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x6

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v57, v63, v64

    const/16 v64, 0x1

    aput v58, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    return-object v59
.end method
