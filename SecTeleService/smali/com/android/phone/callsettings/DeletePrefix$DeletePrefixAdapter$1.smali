.class Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroid/view/View;

    const/16 v4, 0x64

    const/4 v0, 0x1

    const-string v1, "Deleteprefix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "12520"

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->access$1700(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const v3, 0x7f090a6c

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/DeletePrefix;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1200(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->val$position:I

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1502(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const/4 v2, 0x4

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$202(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/DeletePrefix;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/DeletePrefix;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
