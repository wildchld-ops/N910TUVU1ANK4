.class public Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;-><init>()V

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->iconView:Landroid/widget/ImageView;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->labelView:Landroid/widget/TextView;

    const v2, 0x7f08000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->removeIconView:Landroid/widget/ImageView;

    const v2, 0x7f080010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->badgeIconView:Landroid/widget/ImageView;

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->contentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentsPanelView;->mAppIconTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentsPanelView;->mAppIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getAppCnt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getListItemByIndex(IZ)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Recycled child has parent"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Recycled child has parent"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getListItemByIndex(IZ)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->removeIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->badgeIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->removeIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->badgeIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
