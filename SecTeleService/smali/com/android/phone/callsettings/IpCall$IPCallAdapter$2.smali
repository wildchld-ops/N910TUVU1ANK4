.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const v5, 0x7f0904a3

    const v3, 0x7f0904a2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    const-string v0, "ip_call_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "17901"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "17951"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "17911"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "feature_chn_duos_gsm_cdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "17901"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "items.get(position): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v1, 0x7f09047a

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1102(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1702(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x4

    # setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$302(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$1802(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTempEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1800(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mUpdated:Z
    invoke-static {v0, v4}, Lcom/android/phone/callsettings/IpCall;->access$1902(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->editDialog()V

    goto/16 :goto_0
.end method
