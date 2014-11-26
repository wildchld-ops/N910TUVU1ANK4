.class final Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field bgFrame:Landroid/widget/ImageView;

.field bgFrameShadow:Landroid/view/View;

.field calloutLine:Landroid/view/View;

.field descriptionView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field loadedThumbnailAndIcon:Z

.field recentItem:Landroid/widget/RelativeLayout;

.field taskDescription:Lcom/android/systemui/recent/TaskDescription;

.field thumbnailView:Landroid/widget/FrameLayout;

.field thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

.field thumbnailViewImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
