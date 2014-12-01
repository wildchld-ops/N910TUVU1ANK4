.class Lcom/android/phone/callsettings/RejectCallWithMsg$3;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v4, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    return-void
.end method
