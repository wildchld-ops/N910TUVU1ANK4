.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;
.super Landroid/content/BroadcastReceiver;
.source "GsmUmtsAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mForeground:Z
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V
    invoke-static {v2, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    :cond_0
    return-void
.end method
