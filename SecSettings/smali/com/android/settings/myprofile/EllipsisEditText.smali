.class public Lcom/android/settings/myprofile/EllipsisEditText;
.super Landroid/widget/EditText;
.source "EllipsisEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEditTextWidth:F

.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    const/high16 v0, 0x42540000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    const/high16 v0, 0x42540000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    const/high16 v0, 0x42540000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    new-instance v0, Lcom/android/settings/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidget()V

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/myprofile/EllipsisEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initWidth(Landroid/content/Context;)V
    .locals 9

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0149

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f014c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f014b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_1

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v6

    :goto_1
    sub-float v6, v3, v1

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    const-string v6, "EllipsisEditText"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "marginLeft : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", marginRight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size.x : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size.y : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screenWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mEditTextWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v3, v6

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public convertPixelsToDp(F)F
    .locals 2

    iget v1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float v0, p1, v1

    return v0
.end method

.method public fontChange()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    add-float/2addr v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->convertPixelsToDp(F)F

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v8

    if-ge p3, p4, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mEllipsized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpl-float v0, v6, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_0

    :cond_3
    if-le p3, p4, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    :cond_4
    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpl-float v0, v6, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    goto :goto_0

    :cond_5
    cmpg-float v0, v6, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_0
.end method

.method public setMaxTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mMaxTextSize:F

    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/myprofile/EllipsisEditText;->mScaledDensity:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
