.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-eqz v0, :cond_0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$402(Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090589

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
