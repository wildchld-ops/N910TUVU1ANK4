.class Lcom/android/phone/callsettings/PhoneNumberLocator$3;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$3;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForWLAN:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1002(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$3;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForWLAN:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1002(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z

    goto :goto_0
.end method
