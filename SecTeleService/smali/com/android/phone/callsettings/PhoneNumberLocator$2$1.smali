.class Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
