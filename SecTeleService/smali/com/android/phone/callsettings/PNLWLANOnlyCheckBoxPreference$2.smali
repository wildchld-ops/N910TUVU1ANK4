.class Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;
.super Ljava/lang/Object;
.source "PNLWLANOnlyCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    # invokes: Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->writeChargesNotificationPrefrence()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->access$100(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    # invokes: Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->userConfirmClick()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;->access$200(Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
