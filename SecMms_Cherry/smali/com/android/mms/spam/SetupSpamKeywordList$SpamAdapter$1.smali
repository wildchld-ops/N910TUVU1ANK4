.class Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

.field final synthetic val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$302(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # invokes: Lcom/android/mms/spam/SetupSpamKeywordList;->callMatchCriteriaToEditNum()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1200(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
