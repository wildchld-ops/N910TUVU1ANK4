.class Lcom/android/settings/myplace/MyPlaceProfileSettings$10;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const v8, 0x7f0911bb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick Select method dialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z
    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2702(Z)Z

    if-nez p2, :cond_1

    const-string v3, "MyPlaceSettings"

    const-string v4, "wifi is clicked. start wifi network picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "extra_location_services"

    const-string v4, "location"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3, v1, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    if-ne p2, v7, :cond_6

    const-string v3, "MyPlaceSettings"

    const-string v4, "bt is clicked. start bt device picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "fromHelp"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    const-string v3, "MyPlaceSettings"

    const-string v4, "Bluetooth is in TURNING_OFF state. Wait for 300ms to TURN_OFF"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterruptedException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
