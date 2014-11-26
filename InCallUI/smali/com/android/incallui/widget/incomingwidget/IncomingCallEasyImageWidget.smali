.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;
.super Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
.source "IncomingCallEasyImageWidget.java"


# instance fields
.field private final ARROW_ANI_DURATION:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final START_WAVE:I

.field private mEasyArrowLeftAnimation:[I

.field private mEasyArrowRightAnimation:[I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowAnimationIndex:I

.field private mLeftArrowImageViews:Landroid/widget/ImageView;

.field private mLeftHintTextView:Landroid/widget/TextView;

.field private mRightArrowAnimationIndex:I

.field private mRightArrowImageViews:Landroid/widget/ImageView;

.field private mRightHintTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d6
        0x7f0202d7
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
    .end array-data

    :array_1
    .array-data 4
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
        0x7f0202f1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d6
        0x7f0202d7
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
    .end array-data

    :array_1
    .array-data 4
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
        0x7f0202f1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d6
        0x7f0202d7
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
    .end array-data

    :array_1
    .array-data 4
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
        0x7f0202f1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 2
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 2
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hideLeftArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideRightArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private hideRightHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private makeArrowViews(I)V
    .locals 5
    .param p1    # I

    const/4 v4, -0x2

    const/4 v0, 0x0

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    const v3, 0x7f0202d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    const v3, 0x7f0202ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private makeHintView()V
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f04004c

    const/4 v5, -0x2

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const v3, 0x7f090302

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const v3, 0x7f090303

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showArrow()V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearDrawable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-super {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    return-void
.end method

.method protected init()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const-string v5, "init"

    invoke-virtual {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->log(Ljava/lang/String;)V

    const-string v6, "useHoverToAction"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v1, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v6, 0x7f020349

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v6, 0x7f0202f8

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTabImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v7, 0x7f0900a9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x55

    invoke-direct {v4, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v6, 0x7f02034e

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v6, 0x7f0202fa

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setTabImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v7, 0x7f0900ab

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "answering_call_in_external_screen"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, v3, v8, v8, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5, v8, v8, v3, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addTouchArea(IIII)V

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    div-int/lit16 v0, v5, 0x168

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->makeArrowViews(I)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->makeHintView()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 0
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->hideRightArrow()V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->hideRightHint()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->hideLeftArrow()V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->hideLeftHint()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->showHint()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v15, v24, 0xa

    div-int/lit8 v7, v15, 0xa

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d0064

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    const-string v24, "hardkeyboardhidden_no"

    invoke-static/range {v24 .. v24}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    const/16 v25, 0xa0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v24, v15, 0x1

    div-int/lit8 v5, v24, 0x3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    sub-int v24, v24, v15

    add-int v11, v24, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    add-int v24, v24, v15

    sub-int v20, v24, v7

    const-string v24, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v24

    mul-int/lit8 v25, v15, 0x1

    div-int/lit8 v25, v25, 0xa

    sub-int v24, v24, v25

    add-int v24, v24, v5

    sub-int v12, v24, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v15

    add-int v24, v24, v5

    sub-int v21, v24, v16

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v25, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v12

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v21

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v6, v24, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v10, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    sub-int v9, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v25, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v10

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v19, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    sub-int v24, v20, v24

    add-int v18, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v25, v25, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v19

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v8, v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x3

    add-int v24, v24, v12

    sub-int v14, v24, v7

    div-int/lit8 v24, v8, 0xa

    add-int v24, v24, v9

    sub-int v13, v24, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int v25, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v14

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    add-int v23, v24, v7

    mul-int/lit8 v24, v8, 0x2

    sub-int v24, v18, v24

    add-int v22, v24, v7

    if-gez v22, :cond_3

    div-int/lit8 v22, v22, 0x2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int v25, v25, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v23

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setWidth(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->showArrow()V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v24

    mul-int/lit8 v25, v15, 0x1

    div-int/lit8 v25, v25, 0xa

    sub-int v24, v24, v25

    add-int v12, v24, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v15

    sub-int v21, v24, v7

    goto/16 :goto_0
.end method
