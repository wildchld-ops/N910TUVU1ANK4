.class Lcom/android/phone/callsettings/VideoCallBarring$9;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$9;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$9;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v0, v0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$9;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v0, v0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/callsettings/VideoCallBarring$9$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/VideoCallBarring$9$1;-><init>(Lcom/android/phone/callsettings/VideoCallBarring$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
