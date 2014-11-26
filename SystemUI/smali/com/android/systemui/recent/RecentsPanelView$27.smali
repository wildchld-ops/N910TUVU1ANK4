.class Lcom/android/systemui/recent/RecentsPanelView$27;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIvt:[B
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$8100(Lcom/android/systemui/recent/RecentsPanelView;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v4, v4, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIvt:[B
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$8100(Lcom/android/systemui/recent/RecentsPanelView;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v4, v4, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTriggerBy:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$7900(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentCurIndex:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$8500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recent/multiwindow/AppListController;->startFreeStyleActivity(Lcom/android/systemui/recent/TaskDescription;Landroid/graphics/Rect;)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$27;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recent/multiwindow/AppListController;->startFreeStyleActivity(ILandroid/graphics/Rect;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
