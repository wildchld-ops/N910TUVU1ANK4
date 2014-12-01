.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v3, v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    if-nez v1, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_3

    :cond_3
    return-void
.end method
