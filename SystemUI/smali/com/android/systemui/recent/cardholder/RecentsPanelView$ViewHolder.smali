.class final Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field loadedThumbnailAndIcon:Z

.field multiWindowBtn:Landroid/widget/ImageView;

.field shadowViewImage:Landroid/widget/ImageView;

.field taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

.field thumbnailImageView:Landroid/widget/ImageView;

.field thumbnailViewImageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
