.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/view/View;

    const v6, 0x7f0904a3

    const v4, 0x7f0904a2

    const/16 v5, 0x64

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    const-string v0, "ip_call_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "17901"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v2, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "17951"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "17911"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "feature_chn_duos_gsm_cdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "17901"

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v2, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$1600(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "items.get(position): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v2, 0x7f09047a

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$2000(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->val$position:I

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$1102(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v2, 0x4

    # setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/IpCall;->access$302(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
