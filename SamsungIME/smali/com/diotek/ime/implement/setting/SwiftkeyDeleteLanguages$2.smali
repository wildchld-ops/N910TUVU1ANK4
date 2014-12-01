.class Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupItemClick(I)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0800d6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->selectAllItem()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v3, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->deselectAllItem()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_3
    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v6, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e02e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v4

    :cond_2
    move v3, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f08012f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
