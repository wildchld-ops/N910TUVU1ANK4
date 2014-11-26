.class Lcom/android/phone/callsettings/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string v7, "wjshin text_layout onClick"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z
    invoke-static {v6, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$902(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z
    invoke-static {v6, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a002b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    move v3, v2

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v6, v3, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method
