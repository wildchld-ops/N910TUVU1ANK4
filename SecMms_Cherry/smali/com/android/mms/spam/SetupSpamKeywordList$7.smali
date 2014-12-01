.class Lcom/android/mms/spam/SetupSpamKeywordList$7;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V
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

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v5

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v2

    add-int v6, v2, v1

    if-nez v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    if-nez v0, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    return-void
.end method
