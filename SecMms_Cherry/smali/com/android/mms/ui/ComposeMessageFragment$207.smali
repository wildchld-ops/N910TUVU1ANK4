.class Lcom/android/mms/ui/ComposeMessageFragment$207;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updatePrioritySender(ZLcom/android/mms/data/ContactList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$availableCount:I

.field final synthetic val$bSave:Z

.field final synthetic val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/UpdatePrioritySenderAdapter;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    iput-boolean p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$bSave:Z

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$availableCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$bSave:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$bSave:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$availableCount:I

    if-lt v3, v2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->setChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->setChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$updatePrioritySenderAdapter:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->notifyDataSetInvalidated()V

    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->val$selectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$207;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v5, 0x7f0c0464

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/ConversationComposer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
