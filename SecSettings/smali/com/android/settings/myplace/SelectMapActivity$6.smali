.class Lcom/android/settings/myplace/SelectMapActivity$6;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f02083e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f02083f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f020828

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1
.end method
