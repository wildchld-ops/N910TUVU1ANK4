.class Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/saverestore/ConversationListRestore;


# direct methods
.method private constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;Lcom/android/mms/saverestore/ConversationListRestore$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/saverestore/ConversationListRestore;
    .param p2    # Lcom/android/mms/saverestore/ConversationListRestore$1;

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;-><init>(Lcom/android/mms/saverestore/ConversationListRestore;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->startRestoreOperation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03f9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "Mms/ConversationListRestore"

    const-string v2, " Inside oncreateactionmode()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1600(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$602(Lcom/android/mms/saverestore/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1502(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1402(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1302(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1400(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1400(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback$1;-><init>(Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMultiMode:Z
    invoke-static {v1, v4}, Lcom/android/mms/saverestore/ConversationListRestore;->access$502(Lcom/android/mms/saverestore/ConversationListRestore;Z)Z

    return v4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1600(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1600(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1300(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1302(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$602(Lcom/android/mms/saverestore/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMultiMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$502(Lcom/android/mms/saverestore/ConversationListRestore;Z)Z

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    const-string v1, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onItemCheckedStateChanged position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mConvList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1700(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1200(Lcom/android/mms/saverestore/ConversationListRestore;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mConvAdapter:Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->selectAllList()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v4, 0x7f0b03f9

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1402(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1502(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v3

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public selectAllList()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mConvAdapter:Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mConvAdapter:Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1202(Lcom/android/mms/saverestore/ConversationListRestore;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # setter for: Lcom/android/mms/saverestore/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1, v3}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1202(Lcom/android/mms/saverestore/ConversationListRestore;Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mConvAdapter:Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1300(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1300(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-virtual {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/ConversationListRestore"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1400(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1500(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$1400(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/saverestore/ConversationListRestore$ModeCallback;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/saverestore/ConversationListRestore;->access$100(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
