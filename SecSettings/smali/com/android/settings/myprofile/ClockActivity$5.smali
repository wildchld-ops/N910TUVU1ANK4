.class Lcom/android/settings/myprofile/ClockActivity$5;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/ClockActivity;->setDefaultImage()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$700(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020604

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$800(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020609

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$900(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$5;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
