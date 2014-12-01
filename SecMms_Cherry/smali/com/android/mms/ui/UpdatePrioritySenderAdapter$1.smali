.class Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;
.super Ljava/lang/Object;
.source "UpdatePrioritySenderAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$000(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$000(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$100(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getCheckedCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$100(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$200(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSize:I
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$300(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$200(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSelectAllCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$100(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/UpdatePrioritySenderAdapter$1;->this$0:Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    # getter for: Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->access$200(Lcom/android/mms/ui/UpdatePrioritySenderAdapter;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
