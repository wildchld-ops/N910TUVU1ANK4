.class Lcom/android/phone/callsettings/PhoneNumberLocator$5;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$5;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeChargesNotificationPrefrence()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$5;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$900(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
