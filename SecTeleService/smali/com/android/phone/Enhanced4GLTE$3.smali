.class Lcom/android/phone/Enhanced4GLTE$3;
.super Landroid/database/ContentObserver;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Enhanced4GLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$300(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() getMobileDataEnabled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # invokes: Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z
    invoke-static {v2}, Lcom/android/phone/Enhanced4GLTE;->access$400(Lcom/android/phone/Enhanced4GLTE;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$300(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # invokes: Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z
    invoke-static {v1}, Lcom/android/phone/Enhanced4GLTE;->access$400(Lcom/android/phone/Enhanced4GLTE;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # invokes: Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$400(Lcom/android/phone/Enhanced4GLTE;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_configure"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_configure"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
