.class Lcom/android/internal/widget/ActionBarView$4;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v0, v2

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v2, :cond_9

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # setter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v4, v2}, Lcom/android/internal/widget/ActionBarView;->access$202(Lcom/android/internal/widget/ActionBarView;Z)Z

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$1400(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$200(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # setter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v2, v3}, Lcom/android/internal/widget/ActionBarView;->access$202(Lcom/android/internal/widget/ActionBarView;Z)Z

    goto/16 :goto_1
.end method
