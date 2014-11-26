.class Lcom/android/phone/callsettings/DeletePrefix$14;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->editDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iput-object p2, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Deleteprefix"

    const-string v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1300(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1000(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$1100(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->savePrefixNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$300(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    new-instance v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040022

    iget-object v6, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;-><init>(Lcom/android/phone/callsettings/DeletePrefix;Landroid/content/Context;ILjava/util/ArrayList;)V

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$402(Lcom/android/phone/callsettings/DeletePrefix;Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$14;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
