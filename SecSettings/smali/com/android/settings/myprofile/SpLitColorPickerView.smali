.class public Lcom/android/settings/myprofile/SpLitColorPickerView;
.super Landroid/view/View;
.source "SpLitColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private final LOG_TAG:Ljava/lang/String;

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private NUM_COLUMN:I

.field private NUM_ROW:I

.field private POSITION_GAP:I

.field private bClearFocus:Z

.field private context:Landroid/content/Context;

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentDeviceOrientation:I

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xa5

    const/16 v8, 0x72

    const/16 v7, 0x30

    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xcb

    const/16 v3, 0x85

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    const/16 v3, 0xcc

    const/16 v4, 0x79

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/16 v3, 0x94

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/16 v3, 0x67

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    return-void
.end method

.method private applyColor(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_0
.end method

.method private changeColor(FFZ)V
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    const/4 v1, 0x1

    :goto_0
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    add-int/lit8 v4, v1, -0x1

    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    :cond_0
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    :cond_1
    invoke-direct {p0, v4, p3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    return-void

    :cond_2
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v18, v0

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    if-ge v13, v2, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v13

    add-int/lit8 v18, v2, 0x5

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v12, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    add-int v3, v3, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v13

    add-int v10, v2, v12

    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v3, v13

    add-int/2addr v3, v12

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020611

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    const/4 v4, 0x1

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    if-ne v10, v2, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-ne v10, v2, :cond_2

    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v2, v3

    add-int v17, v17, v2

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method private initColorPicker(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    const v12, 0x7f02060f

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    iput p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020613

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e4ccccd
        0x3ecccccd
        0x3f19999a
        0x3f4ccccd
        0x3f800000
    .end array-data
.end method

.method private updateRowVsColumn()V
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    return v0
.end method

.method public getDrawFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_8
    if-ne p1, v5, :cond_a

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColorIndex(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v3, v1, v2

    :cond_0
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    if-eqz p1, :cond_1

    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->initColorPicker(II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0b02f2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setCustomColor(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_1
.end method

.method public setColorIndex(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 4
    .param p1    # I

    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    invoke-direct {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->updateRowVsColumn()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v0

    const-wide v2, 0x401199999999999aL

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    :cond_2
    return-void
.end method

.method public setDrawFocus(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    return-void
.end method

.method public setKeepCustomColor(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    iput-boolean p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setOnSelectCustomColorListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    :cond_0
    return-void
.end method
