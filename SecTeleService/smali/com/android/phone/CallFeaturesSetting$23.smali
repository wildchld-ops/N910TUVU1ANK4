.class Lcom/android/phone/CallFeaturesSetting$23;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "CallFeaturesSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v11, "sip_settings_category_key"

    invoke-virtual {v8, v11}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    if-eq v3, v6, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_1

    :cond_2
    const-string v8, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3700(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_tty_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mForeground:Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3900(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V
    invoke-static {v8, v5}, Lcom/android/phone/CallFeaturesSetting;->access$4000(Lcom/android/phone/CallFeaturesSetting;I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_5

    move v7, v9

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - ACTION_HEADSET_PLUG : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$1900(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$4100(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$4200(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_2

    :cond_5
    move v7, v10

    goto :goto_3

    :cond_6
    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiver - ACTION_CONNECTION_STATE_CHANGED : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->access$1900(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNoiseReduction()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$4200(Lcom/android/phone/CallFeaturesSetting;)V

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$23;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateNaturalSound()V
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$4300(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_2
.end method
