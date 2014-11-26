.class Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    const v1, 0x7f0a00a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->access$1800(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string v1, "Deleteprefix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->access$1700(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1100(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    const-string v2, "Deleteprefix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ip number is changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->access$1700(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    new-instance v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040022

    iget-object v6, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v6, v6, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;-><init>(Lcom/android/phone/callsettings/DeletePrefix;Landroid/content/Context;ILjava/util/ArrayList;)V

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$402(Lcom/android/phone/callsettings/DeletePrefix;Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
