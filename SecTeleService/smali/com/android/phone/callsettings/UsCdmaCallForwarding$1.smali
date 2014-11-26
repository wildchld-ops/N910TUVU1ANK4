.class Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    const-string v1, "mActivatePreferences clicked"

    # invokes: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$000(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    return v2
.end method
