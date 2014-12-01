.class Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;
.super Ljava/lang/Object;
.source "LGTEditPhotoRingRejectScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$000(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$000(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$000(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
