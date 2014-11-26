.class public Lcom/android/keyguard/sec/KeyguardBoundedLayout;
.super Landroid/widget/FrameLayout;
.source "KeyguardBoundedLayout.java"


# instance fields
.field private final mBoundedHeight:I

.field private final mBoundedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/R$styleable;->BoundedLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    if-ge v3, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    if-ge v3, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
