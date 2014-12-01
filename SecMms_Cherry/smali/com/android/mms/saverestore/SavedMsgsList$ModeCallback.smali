.class Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;


# direct methods
.method private constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;Lcom/android/mms/saverestore/SavedMsgsList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2200(Lcom/android/mms/saverestore/SavedMsgsList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1700(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/io/File;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v4}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2200(Lcom/android/mms/saverestore/SavedMsgsList;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1702(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2300(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2400(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$400(Lcom/android/mms/saverestore/SavedMsgsList;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/16 v1, 0xc

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2500(Lcom/android/mms/saverestore/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2200(Lcom/android/mms/saverestore/SavedMsgsList;)I

    move-result v1

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->checkIfEncrypted(I)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2600(Lcom/android/mms/saverestore/SavedMsgsList;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/16 v1, 0xb

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2500(Lcom/android/mms/saverestore/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2200(Lcom/android/mms/saverestore/SavedMsgsList;)I

    move-result v1

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->checkIfEncrypted(I)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2600(Lcom/android/mms/saverestore/SavedMsgsList;I)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1602(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/16 v1, 0xd

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2500(Lcom/android/mms/saverestore/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->ShowRenameDialog()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03d8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "Mms/SavedMsgsList"

    const-string v3, " Inside oncreateactionmode()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1200(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0004

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1002(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1602(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0030

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2702(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v2, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2102(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2700(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2700(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback$1;-><init>(Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMultiMode:Z
    invoke-static {v2, v5}, Lcom/android/mms/saverestore/SavedMsgsList;->access$902(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1002(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2100(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2102(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMultiMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$902(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5

    const-string v1, "Mms/SavedMsgsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemCheckedStateChanged position = "

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

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2202(Lcom/android/mms/saverestore/SavedMsgsList;I)I

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1900(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x7f0b03db

    const v6, 0x7f0b03d9

    const v5, 0x7f0b03da

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2702(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    const v0, 0x7f0b03d8

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->selectionHasFolder()Z
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2800(Lcom/android/mms/saverestore/SavedMsgsList;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b03d8

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    const v0, 0x7f0b03d8

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->selectionHasFolder()Z
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2800(Lcom/android/mms/saverestore/SavedMsgsList;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
