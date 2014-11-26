.class Lcom/android/phone/PreferredNetworks$2;
.super Ljava/lang/Object;
.source "PreferredNetworks.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v1, "PreferredNetworks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mArrayList.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    const-class v2, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type_action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "index"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "act_gsm"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_gsm_compact"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_utran"

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v1, v1, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
