.class Lcom/android/mms/settings/BubbleStyle$6;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BubbleStyle;->setGalleryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BubbleStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BubbleStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/android/mms/settings/BubbleStyle;->access$300(Lcom/android/mms/settings/BubbleStyle;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/android/mms/settings/BubbleStyle;->access$300(Lcom/android/mms/settings/BubbleStyle;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    const v5, 0x7f0c00e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_3
    move v2, v3

    goto/16 :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v5, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    move v2, v3

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$6;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v5, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    move v2, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
