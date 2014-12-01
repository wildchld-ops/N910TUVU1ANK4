.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->createPopup()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const v4, 0x7f090b71

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v4, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
