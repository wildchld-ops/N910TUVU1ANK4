.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v6, 0xa

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v2, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904b6

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
