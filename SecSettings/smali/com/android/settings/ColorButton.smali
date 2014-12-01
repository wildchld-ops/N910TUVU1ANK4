.class public Lcom/android/settings/ColorButton;
.super Landroid/widget/ImageButton;
.source "ColorButton.java"


# static fields
.field static final COVER_BACKGROUND_COLOR_DEFAULT:I


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private MARGIN:I

.field private POSITION_GAP:I

.field private isFocused:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/ColorButton;->COVER_BACKGROUND_COLOR_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    return-void
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v6, 0x95

    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v5, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget v6, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sget v4, Lcom/android/settings/ColorButton;->COVER_BACKGROUND_COLOR_DEFAULT:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-boolean v4, p0, Lcom/android/settings/ColorButton;->isFocused:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private initColorPicker(II)V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_WIDTH:I

    iput p2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020613

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_WIDTH:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_HEIGHT:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02061b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    iget-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

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

    iget v2, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
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


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ColorButton;->drawColors(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ColorButton;->initColorPicker(II)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ColorButton;->isFocused:Z

    return-void
.end method
