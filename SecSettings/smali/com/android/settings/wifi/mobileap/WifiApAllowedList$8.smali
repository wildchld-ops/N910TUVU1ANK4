.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method
