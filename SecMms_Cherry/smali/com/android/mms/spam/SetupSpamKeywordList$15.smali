.class Lcom/android/mms/spam/SetupSpamKeywordList$15;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->deleteSpamKeyword(I)V
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1300(Lcom/android/mms/spam/SetupSpamKeywordList;I)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const v3, 0x7f0c02ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1400(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$302(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iput v4, v1, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1900(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c02ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
