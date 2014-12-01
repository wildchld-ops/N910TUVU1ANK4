.class Lcom/android/phone/callsettings/SoundEQDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundEQDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SoundEQDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SoundEQDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SoundEQDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SoundEQDialog$1;->this$0:Lcom/android/phone/callsettings/SoundEQDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.callsettings.ACTION.SENT_CLOSE_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SoundEQDialog$1;->this$0:Lcom/android/phone/callsettings/SoundEQDialog;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SoundEQDialog;->finish()V

    :cond_0
    return-void
.end method
