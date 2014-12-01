.class Lcom/android/phone/callsettings/PowerKeyEndPreference$1;
.super Ljava/lang/Object;
.source "PowerKeyEndPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    # getter for: Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    # getter for: Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
