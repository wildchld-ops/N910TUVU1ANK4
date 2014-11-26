.class Lcom/android/phone/callsettings/EditIpCallScreen$3;
.super Ljava/lang/Object;
.source "EditIpCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditIpCallScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditIpCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditIpCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditIpCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    # getter for: Lcom/android/phone/callsettings/EditIpCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/EditIpCallScreen;->access$000(Lcom/android/phone/callsettings/EditIpCallScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditIpCallScreen$3;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditIpCallScreen;->mCreateEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
