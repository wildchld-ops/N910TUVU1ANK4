.class Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;
.super Ljava/lang/Object;
.source "UsCdmaCallForwarding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/UsCdmaCallForwarding;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    const-string v2, "*72"

    # setter for: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$102(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.UsCdmaCallForwardingDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    # getter for: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$100(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_where"

    const-string v2, "us_cdma_call_fowarding_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$4;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    const-string v2, "*92"

    # setter for: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->mNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$102(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
