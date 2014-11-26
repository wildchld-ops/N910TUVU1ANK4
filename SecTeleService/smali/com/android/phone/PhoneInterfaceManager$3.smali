.class Lcom/android/phone/PhoneInterfaceManager$3;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager;->notifyListenerOfCallLocked(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/ITelephonyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;

.field final synthetic val$call:Lcom/android/services/telephony/common/Call;

.field final synthetic val$listener:Lcom/android/internal/telephony/ITelephonyListener;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/internal/telephony/ITelephonyListener;Lcom/android/services/telephony/common/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$3;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$listener:Lcom/android/internal/telephony/ITelephonyListener;

    iput-object p3, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$listener:Lcom/android/internal/telephony/ITelephonyListener;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$3;->val$call:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyListener;->onUpdate(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneInterfaceManager"

    const-string v2, "Local binder call failed with RemoteException."

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
