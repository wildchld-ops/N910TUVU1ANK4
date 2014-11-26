.class Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$4;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # getter for: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$100(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
