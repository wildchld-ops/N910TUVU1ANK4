.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;
.super Landroid/content/BroadcastReceiver;
.source "GsmUmtsAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "IMS_REG_STATUS"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-result-object v4

    if-nez v1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "button_fdn_key"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string v5, "fdn setEnabled in IMS"

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v5, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    if-nez v1, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_4
    const-string v6, "GsmUmtsAdditionalCallOptions"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4
.end method
