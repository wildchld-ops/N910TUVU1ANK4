.class final Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentItemLayoutId:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;-><init>()V

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, v1, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemWidth:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mItemHeight:I
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    move v1, p1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$600(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->isLoaded()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$700(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportCloseButtonOnRecentPanel:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportMultiWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v1, v0, v2, v3, v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    iput-boolean v3, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    return-void
.end method
