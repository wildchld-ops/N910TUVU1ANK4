.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const-string v4, "text_layout onLongClick"

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v5

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->sendTouchEvent(ILandroid/widget/ListView;)V
    invoke-static {v1, v4, v5}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;ILandroid/widget/ListView;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScreenType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v5}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    add-int/lit8 v4, v0, 0x1

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1802(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    :cond_5
    move v1, v3

    goto/16 :goto_0
.end method
