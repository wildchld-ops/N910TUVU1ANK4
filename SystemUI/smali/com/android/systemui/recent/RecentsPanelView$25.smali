.class Lcom/android/systemui/recent/RecentsPanelView$25;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "RecentsPanelView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App icon long clicked :: appIconIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v10}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mLunchBlock:Z
    invoke-static {v6, v7}, Lcom/android/systemui/recent/RecentsPanelView;->access$6802(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v9, p1}, Lcom/android/systemui/recent/RecentsPanelView;->getItemIndex(Landroid/view/View;)I

    move-result v9

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v6, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6502(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v10}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/recent/multiwindow/AppListController;->isPenWindowOnly(I)Z

    move-result v9

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsPenWindowOnly:Z
    invoke-static {v6, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6902(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v9

    invoke-virtual {v6, v9, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getListItemByIndex(IZ)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recent/multiwindow/AppListController;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsSupportScaleApp:Z
    invoke-static {v6, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$7002(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recent/multiwindow/AppListController;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsSupportMultiWindow:Z
    invoke-static {v6, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$7102(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsSupportScaleApp:Z
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$7000(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPenWindowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$7200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPenWindowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$7200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const v9, 0x3f4ccccd

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mPenWindowView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$7300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "text/uri-list"

    aput-object v6, v4, v7

    new-instance v3, Landroid/content/ClipData$Item;

    const-string v6, ""

    invoke-direct {v3, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/ClipData;

    const-string v6, "appIcon"

    invoke-direct {v0, v6, v4, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v6

    const/4 v9, -0x1

    if-le v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-boolean v10, v10, Lcom/android/systemui/recent/RecentsPanelView;->mSupportMultiInstance:Z

    invoke-virtual {v6, v9, v10, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    return v6

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIntent:Landroid/content/Intent;
    invoke-static {v9, v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$7402(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIntents:Ljava/util/List;
    invoke-static {v6, v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$7502(Lcom/android/systemui/recent/RecentsPanelView;Ljava/util/List;)Ljava/util/List;

    const-string v6, "RecentsPanelView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App icon long clicked :: packageName: = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/systemui/recent/RecentsPanelView;->access$7400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recent/multiwindow/AppListController;->updateWindowRects()V

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$25$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$25$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView$25;Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v9, 0x2

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mTriggerBy:I
    invoke-static {v6, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$7902(Lcom/android/systemui/recent/RecentsPanelView;I)I

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListScrollView:Landroid/widget/ScrollView;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$6100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ScrollView;

    move-result-object v6

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mGuideLineLayout:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$8000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v6, v6, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIvt:[B
    invoke-static {v7}, Lcom/android/systemui/recent/RecentsPanelView;->access$8100(Lcom/android/systemui/recent/RecentsPanelView;)[B

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$25;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v9, v9, Lcom/android/systemui/recent/RecentsPanelView;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_2
    move v6, v8

    goto :goto_0
.end method
