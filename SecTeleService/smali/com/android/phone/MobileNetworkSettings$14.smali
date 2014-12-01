.class Lcom/android/phone/MobileNetworkSettings$14;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v2, "com.smithmicro.mnd"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->whichSCOInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$1500(Lcom/android/phone/MobileNetworkSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.smithmicro.mnd"

    const-string v2, "com.smithmicro.mnd.MNDSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    const-string v1, "SCO Settings"

    const-string v2, "SmithMicro package is loaded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v2, "com.birdstep.android.cm"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->whichSCOInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$1500(Lcom/android/phone/MobileNetworkSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.birdstep.android.cm"

    const-string v2, "com.birdstep.android.cm.SettingsDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    const-string v1, "SCO Settings"

    const-string v2, "Birdstep package is loaded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "SCO Settings"

    const-string v2, "Both Birdstep and SmithMicro packages are not found"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
