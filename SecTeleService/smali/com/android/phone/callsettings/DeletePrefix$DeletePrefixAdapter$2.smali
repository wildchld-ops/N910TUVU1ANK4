.class Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const-string v0, "Deleteprefix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->val$position:I

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1502(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v1

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1402(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const/4 v1, 0x4

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$202(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$1302(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Deleteprefix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Deleteprefix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTempEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mTempEditString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1300(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mUpdated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1602(Lcom/android/phone/callsettings/DeletePrefix;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;->this$1:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/DeletePrefix;->editDialog()V

    :cond_0
    return-void
.end method
