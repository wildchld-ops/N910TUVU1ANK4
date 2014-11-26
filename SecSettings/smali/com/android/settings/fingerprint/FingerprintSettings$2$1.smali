.class Lcom/android/settings/fingerprint/FingerprintSettings$2$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$2;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "previousStage"

    const-string v2, "FingerprintSettings_changepassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
