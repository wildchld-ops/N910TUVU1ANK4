.class public Lcom/android/launcher2/FolderIconHelper;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIconHelper$AppIconData;,
        Lcom/android/launcher2/FolderIconHelper$LocFolder;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static FOLDER_ANIMATION_SCALE:I

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field private static sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sDebugColors:[I

.field private static sDirections_land:[[[I

.field private static sDirections_port:[[[I

.field private static sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    sput-boolean v6, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDebugColors:[I

    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_16

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_17

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1d

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1e

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_1f

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_24

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_25

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_26

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_27

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_28

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_29

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_2a

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_2b

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2c

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_2d

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_2f

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_30

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_32

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_33

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_34

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_35

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_36

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_2
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_9
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_d
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x3
        -0x3
    .end array-data

    :array_f
    .array-data 4
        -0x3
        -0x3
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_12
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3
        -0x3
    .end array-data

    :array_14
    .array-data 4
        -0x3
        -0x3
    .end array-data

    :array_15
    .array-data 4
        0x0
        -0x6
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_18
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x5
        -0x3
    .end array-data

    :array_1a
    .array-data 4
        -0x5
        -0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3
        -0x6
    .end array-data

    :array_1c
    .array-data 4
        -0x3
        -0x6
    .end array-data

    :array_1d
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_1e
    .array-data 4
        -0x3
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_20
    .array-data 4
        -0x4
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_25
    .array-data 4
        -0x4
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_29
    .array-data 4
        -0x4
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x3
        -0x2
    .end array-data

    :array_2b
    .array-data 4
        -0x3
        -0x2
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2d
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_2e
    .array-data 4
        -0x3
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_30
    .array-data 4
        -0x9
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_33
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_34
    .array-data 4
        -0x3
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_36
    .array-data 4
        -0x9
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x3
        -0x2
    .end array-data

    :array_38
    .array-data 4
        -0x3
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->sort()V

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    iput-object v4, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {p1, v1}, Lcom/android/launcher2/FolderIconHelper;->drawIcons(Lcom/android/launcher2/FolderItem;I)V

    if-eqz v3, :cond_1

    iput-object v3, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0
.end method

.method static createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getFolderPlateOffsetY()F

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static drawIcons(Lcom/android/launcher2/FolderItem;I)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x6

    if-le p1, v0, :cond_2

    const/4 p1, 0x6

    :cond_2
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const v1, 0x4400ff00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    invoke-static {p0}, Lcom/android/launcher2/FolderIconHelper;->getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v10

    invoke-static {p0}, Lcom/android/launcher2/FolderIconHelper;->getHotseatScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v8

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderContentWidth()F

    move-result v6

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v6

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float v11, v0, v1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderPaddingTop()F

    move-result v0

    const/high16 v1, 0x40000000

    sub-float/2addr v1, v8

    mul-float v12, v0, v1

    add-int/lit8 v9, p1, -0x1

    :goto_0
    if-ltz v9, :cond_0

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppIconXYCord(I)[F

    move-result-object v7

    const/4 v0, 0x0

    aget v1, v7, v0

    add-float/2addr v1, v11

    aput v1, v7, v0

    const/4 v0, 0x1

    aget v1, v7, v0

    add-float/2addr v1, v12

    aput v1, v7, v0

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    aget v1, v7, v1

    mul-float/2addr v1, v8

    const/4 v2, 0x1

    aget v2, v7, v2

    mul-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sDebugColors:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I
    invoke-static {v3}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I
    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, -0x1

    goto :goto_0
.end method

.method public static getAppIconScaleFactor()F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F
    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F

    move-result v0

    return v0
.end method

.method public static getAppIconXYCord(I)[F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppIconXYCord(I)[F

    move-result-object v0

    return-object v0
.end method

.method public static getFolderContentHeight()F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderContentHeight()F

    move-result v0

    return v0
.end method

.method public static getFolderContentWidth()F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderContentWidth()F

    move-result v0

    return v0
.end method

.method public static getFolderPaddingTop()F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderPaddingTop()F

    move-result v0

    return v0
.end method

.method public static getFolderPlateOffsetY()F
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getFolderPlateOffsetY()F

    move-result v0

    return v0
.end method

.method static getFolderWidth()I
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private static getHotseatScaleFactor(Lcom/android/launcher2/FolderItem;)F
    .locals 6

    const/high16 v1, 0x3f800000

    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SIZE:I
    invoke-static {v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$400(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I
    invoke-static {v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :cond_0
    return v1
.end method

.method public static getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v2, 0x7f0e0022

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    :goto_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_1

    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    :goto_1
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_2

    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_3

    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    const/high16 v3, 0x7f0c0000

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1

    :cond_3
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1
.end method

.method public static getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F
    .locals 5

    instance-of v1, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_ICON_SCALE_FACTOR:F
    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$300(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F
    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F
    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;)F

    move-result v1

    goto :goto_0
.end method

.method public static getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # invokes: Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    invoke-static {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$500(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFolderGradationDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # invokes: Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderGradationDrawable(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$700(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # invokes: Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;
    invoke-static {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$600(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static initFolderResources(Landroid/content/res/Resources;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :cond_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :cond_2
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    goto :goto_0
.end method
