.class Lcom/android/mms/settings/BackgroundStyle$6;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BackgroundStyle;->setGalleryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BackgroundStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BackgroundStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-boolean v3, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v1, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    :goto_0
    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x42

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/mms/settings/BackgroundStyle;->access$100(Lcom/android/mms/settings/BackgroundStyle;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # getter for: Lcom/android/mms/settings/BackgroundStyle;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/mms/settings/BackgroundStyle;->access$100(Lcom/android/mms/settings/BackgroundStyle;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v1, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle$6;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    const v6, 0x7f0c00e1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_3
    move v3, v4

    :goto_2
    return v3

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x14

    if-ne p2, v3, :cond_5

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method
