.class public final Lcom/android/systemui/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_HTML_END:Ljava/lang/String; = "\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field static bNewLineCheck:Z

.field static bNewLineOrentation:Z

.field static finalString:Ljava/lang/String;

.field static mNewLineString:Ljava/lang/String;

.field static mShowIntegerString:Ljava/lang/String;

.field static mShowString:Ljava/lang/String;


# instance fields
.field private mAddItemIds:[I

.field private final mContext:Landroid/content/Context;

.field private final mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/HelpHubDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mImageYDiff:F

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mInsideImageGravity:I

.field private mInsideImageHeight:F

.field private mInsideImagePadding:Landroid/graphics/Rect;

.field private mInsideImageWidth:F

.field mStorevalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->initSelfResources(Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->IntegerinitSelfResources(Landroid/util/AttributeSet;)V

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->StringinitSelfResources(Landroid/util/AttributeSet;)V

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->NewLineinitSelfResources(Landroid/util/AttributeSet;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method private Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v7, 0x9

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v5, "$d"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    if-ge v3, v7, :cond_0

    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v7, 0xa

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v5, "$s"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    if-ge v3, v7, :cond_0

    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforinteger(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p2, v5, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_0

    sput-boolean v2, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return v2

    :cond_0
    sput-boolean v3, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v3

    goto :goto_0
.end method

.method private CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforstring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private IntegerHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private IntegerinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->IntegerHtmlText(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private NewLineHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private NewLineinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mNewLineString:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->NewLineHtmlText(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private StringHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private StringinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p1, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v2, v4, v6

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->StringHtmlText(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/HelpHubTextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const-string v10, "%s"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    :goto_0
    if-eqz v8, :cond_1

    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v10, v10

    if-ge v2, v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src=\"@drawable/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v11, v11, v2

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v4, "$s"

    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :goto_1
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/lit8 v1, v10, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<img src=\"@drawable/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v10, v10, v1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"/>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v10
.end method

.method private applyInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const-string v5, "%d"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private applyNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v7, "ko"

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v7, " "

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v7, v7

    if-ge v1, v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    if-eqz v7, :cond_2

    :cond_0
    const-string v7, " "

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    goto :goto_0

    :cond_2
    const-string v7, "<BR>"

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v7
.end method

.method private applyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const-string v5, "%s"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private checkspecialcharacterforinteger(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "$d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkspecialcharacterforstring(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "[\n]"

    const-string v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initImgPadding(Landroid/content/res/TypedArray;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void
.end method

.method private initSelfResources(Landroid/util/AttributeSet;)V
    .locals 11

    const/high16 v10, -0x40800000

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v6, p1, v7, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    :cond_1
    const/16 v6, 0xc

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initImgPadding(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initHtmlText(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v3, v6, v8

    goto :goto_1
.end method

.method private invalidateDrawables()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/HelpHubDrawable;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setGravity(I)V

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    :goto_1
    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setPadding(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getImgGravity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    return v0
.end method

.method public getImgHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v0, v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method public setImgGravity(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgHeight(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgPadding(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgPaddingLeft(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgPaddingRight(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method public setImgWidth(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method
