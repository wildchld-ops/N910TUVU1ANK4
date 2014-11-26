.class Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;
.super Ljava/lang/Object;
.source "UsCdmaCallForwarding.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/UsCdmaCallForwarding;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    const-string v2, "mDeactivatePreferences clicked"

    # invokes: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v5}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$000(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "*73"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "origin"

    const-string v2, "us_cdma_call_fowarding_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5
.end method
