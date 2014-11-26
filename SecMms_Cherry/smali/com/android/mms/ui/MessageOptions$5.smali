.class Lcom/android/mms/ui/MessageOptions$5;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$5;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$5;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$5;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$5;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$5;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$5;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$5;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
