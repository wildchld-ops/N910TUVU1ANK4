.class Lcom/android/mms/ui/MessageOptions$4;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/AttachmentListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 3

    const-string v0, "GridTest"

    const-string v1, "MultiSelect Start = "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    # setter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions;->access$502(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 4

    const-string v2, "GridTest"

    const-string v3, "MultiSelect end = "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    const-string v1, "GridTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTwMultiSelected call position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  PenPress is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
