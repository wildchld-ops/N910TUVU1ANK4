.class Lcom/android/phone/callsettings/VideoCallBarring$7;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->access$202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1100(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v3, v3, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$400(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1200(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$7;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # invokes: Lcom/android/phone/callsettings/VideoCallBarring;->enableClick(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->access$1400(Lcom/android/phone/callsettings/VideoCallBarring;Z)V

    return-void
.end method
