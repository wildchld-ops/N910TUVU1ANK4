.class Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;
.super Ljava/lang/Object;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->alertdialogSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    # getter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$000(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-object v3, v3, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "EditAutoRejectSVideoCallcreen"

    const-string v3, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.dialer.interaction.InteractionRecentActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "OPTION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v2, v1, v4}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EditAutoRejectSVideoCallcreen"

    const-string v3, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    # getter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$300()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
