.class Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$2;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$2;->this$1:Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7$2;->this$1:Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;

    iget-object v0, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$7;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentPenWindowFakeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$3500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
