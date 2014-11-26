.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;
.super Ljava/lang/Object;
.source "SmartScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0x7f0b027d

    const v5, 0x7f040101

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f091bc1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f091bc0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkVisualFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
