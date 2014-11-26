.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;
.super Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;
.source "SmartScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxScrollSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->getMaxScrollOffset()I

    move-result v0

    :cond_0
    return v0
.end method

.method public isSmartScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkSmartScroll()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showScrollGuide()V
    .locals 6

    const v5, 0x7f0b027d

    const/4 v4, 0x1

    const-string v0, "SmartScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCROLL - showScrollGuide() : mScrollReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040101

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f091bbd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    const/16 v1, 0xd

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$202(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    const/4 v1, 0x2

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$102(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f091bbf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showScrollReadyGuide()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0b0288

    const v5, 0x7f0b0287

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "SmartScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCROLL - SmartScrollReady() in Tutorial : mScrollReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentGuide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040103

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    const/16 v1, 0xc

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$202(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I
    invoke-static {v0, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$102(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040104

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkVisualFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020401

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$500(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->FACE_DETECT_NOTI_DELAY:I
    invoke-static {v2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0205b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
