.class Lcom/android/mms/ui/ComposeMessageFragment$219;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showUpdateSpamNumberDialog(ZLcom/android/mms/data/ContactList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

.field final synthetic val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/spam/UpdateSpamNumberAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    invoke-virtual {v3}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->getCount()I

    move-result v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->setChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->setChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$219;->val$mListAdapter:Lcom/android/mms/spam/UpdateSpamNumberAdapter;

    invoke-virtual {v3}, Lcom/android/mms/spam/UpdateSpamNumberAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
