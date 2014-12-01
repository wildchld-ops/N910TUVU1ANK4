.class Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;
.super Ljava/lang/Object;
.source "UpdatePrioritySenderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->isChecked(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getCheckedCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getAlreadySavedCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSave:Z
    invoke-static {v4}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$400(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mAvailableCount:I
    invoke-static {v4}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$500(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)I

    move-result v4

    sub-int v5, v2, v0

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->toggle(I)V

    iget-object v4, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$600(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$2;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$600(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0464

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
