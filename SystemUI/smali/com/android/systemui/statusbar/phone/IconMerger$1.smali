.class Lcom/android/systemui/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

.field final synthetic val$moreRequired:Z

.field final synthetic val$notificationIconsWidth:I

.field final synthetic val$overflowShown:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$overflowShown:Z

    iput p4, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$notificationIconsWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v3, :cond_0

    const-string v3, "ORANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$300(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$200(Lcom/android/systemui/statusbar/phone/IconMerger;)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$notificationIconsWidth:I

    if-gt v4, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_1
    const-string v3, "ORANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$overflowShown:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$300(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method
