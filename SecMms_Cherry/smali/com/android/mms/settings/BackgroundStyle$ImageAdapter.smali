.class Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/BackgroundStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field final synthetic this$0:Lcom/android/mms/settings/BackgroundStyle;


# direct methods
.method public constructor <init>(Lcom/android/mms/settings/BackgroundStyle;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mDensity:F

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget v0, Lcom/android/mms/settings/DisplayStyleActivity;->mMaxItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

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
    .locals 12
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const v9, 0x7f0c023b

    const/high16 v8, 0x42c80000

    const v7, 0x7f0c023a

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz p2, :cond_0

    if-eqz v3, :cond_8

    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mDensity:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->mDensity:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-ne p1, v4, :cond_9

    const v4, 0x7f0202f1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0358

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/android/mms/settings/DisplayStyleActivity;->mNewFestivalItemIdx:I

    if-ne p1, v4, :cond_2

    const v4, 0x7f0b0015

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0358

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    if-lez p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    if-ne p1, v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v4, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v4, :cond_f

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/mms/settings/BackgroundStyle;->access$700(Lcom/android/mms/settings/BackgroundStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-lt v4, v10, :cond_5

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-boolean v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v6

    sget-object v7, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v8, v8, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    iget-object v9, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v9, v9, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-gt v4, v10, :cond_4

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iput v11, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    :cond_4
    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v5, v11}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_5
    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-boolean v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-lt v4, v10, :cond_7

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v6, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v6, v6, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v8, v8, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    iget-object v9, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v9, v9, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v5

    iput v5, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-gt v4, v10, :cond_6

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iput v11, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    :cond_6
    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v4, v11, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_7
    return-object v2

    :cond_8
    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_9
    const v4, 0x7f020177

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_e

    if-ne p1, v10, :cond_d

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_f
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffectJpn()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/mms/settings/DisplayStyleActivity;->mFestivalBGImageArray:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_10
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
