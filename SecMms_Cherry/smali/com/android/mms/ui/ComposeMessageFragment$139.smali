.class Lcom/android/mms/ui/ComposeMessageFragment$139;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v3, "showSmileyDialog(), setViewValue return Fragment already detached. just Finish"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_1
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f0b0388

    if-ne v1, v3, :cond_5

    const-string v1, "\u00a0"

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$139;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
