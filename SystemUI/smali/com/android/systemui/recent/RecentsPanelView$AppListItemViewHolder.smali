.class final Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppListItemViewHolder"
.end annotation


# instance fields
.field badgeIconView:Landroid/widget/ImageView;

.field contentView:Landroid/widget/LinearLayout;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field removeIconView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->badgeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnDragListener;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$AppListItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
