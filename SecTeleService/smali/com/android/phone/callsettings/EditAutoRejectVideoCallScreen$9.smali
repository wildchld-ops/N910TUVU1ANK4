.class Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;
.super Ljava/lang/Object;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    # getter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$100(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    # getter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$000(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$102(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;Z)Z

    return-void
.end method
