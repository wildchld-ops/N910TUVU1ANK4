.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->setCustomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$7;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->softkeyRightRun(Landroid/view/View;)V

    return-void
.end method
