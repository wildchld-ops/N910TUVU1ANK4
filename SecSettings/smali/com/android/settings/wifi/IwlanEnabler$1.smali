.class Lcom/android/settings/wifi/IwlanEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "IwlanEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/IwlanEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/IwlanEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/IwlanEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v9, 0x7f091416

    const v8, 0x7f09140f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # invokes: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$100(Lcom/android/settings/wifi/IwlanEnabler;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # invokes: Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # invokes: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # invokes: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    const-string v4, "vpn.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v4, "CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z
    invoke-static {v4, v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    # setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    goto/16 :goto_0

    :cond_a
    const-string v4, "action.iwlan.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v4, p2}, Lcom/android/settings/wifi/IwlanEnabler;->updataIwlanNetworks(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
