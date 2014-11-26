.class Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;
.super Landroid/database/ContentObserver;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalDataRoamingAccessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # invokes: Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I
    invoke-static {v1}, Lcom/android/phone/GlobalDataRoamingAccess;->access$000(Lcom/android/phone/GlobalDataRoamingAccess;)I

    move-result v0

    # getter for: Lcom/android/phone/GlobalDataRoamingAccess;->DBG:Z
    invoke-static {}, Lcom/android/phone/GlobalDataRoamingAccess;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalDataRoamingAccess"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideAllowDataAccess()V

    return-void
.end method
