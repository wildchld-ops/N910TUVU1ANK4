.class Lcom/android/mms/settings/BubbleStyle$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BubbleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/BubbleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field final synthetic this$0:Lcom/android/mms/settings/BubbleStyle;


# direct methods
.method public constructor <init>(Lcom/android/mms/settings/BubbleStyle;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mDensity:F

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/high16 v7, 0x42c80000

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz p2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mDensity:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v6, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-boolean v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z
    invoke-static {v4}, Lcom/android/mms/settings/BubbleStyle;->access$400(Lcom/android/mms/settings/BubbleStyle;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v6, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v6, v6, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v8, v8, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v9, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v9, v9, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    :goto_2
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v10, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # setter for: Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z
    invoke-static {v4, v10}, Lcom/android/mms/settings/BubbleStyle;->access$402(Lcom/android/mms/settings/BubbleStyle;Z)Z

    :cond_1
    :goto_3
    add-int/lit8 v2, p1, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c032d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1

    :cond_3
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iput v10, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z
    invoke-static {v4}, Lcom/android/mms/settings/BubbleStyle;->access$400(Lcom/android/mms/settings/BubbleStyle;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v6

    sget-object v7, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v8, v8, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v9, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v9, v9, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    :goto_4
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v5, v10}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # setter for: Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z
    invoke-static {v4, v10}, Lcom/android/mms/settings/BubbleStyle;->access$402(Lcom/android/mms/settings/BubbleStyle;Z)Z

    goto/16 :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iput v10, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    goto :goto_4
.end method
