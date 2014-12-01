.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    # getter for: Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->access$000(Lcom/android/settings/location/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "LocationSettings"

    const-string v4, "sendBroadcast : Msap enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MSAP_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    # getter for: Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->access$000(Lcom/android/settings/location/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->access$100(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_msap_saved_state"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_0
    const-string v2, "LocationSettings"

    const-string v4, "sendBroadcast : Msap disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MSAP_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    # getter for: Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->access$000(Lcom/android/settings/location/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
