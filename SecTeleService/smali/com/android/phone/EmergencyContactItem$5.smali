.class Lcom/android/phone/EmergencyContactItem$5;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyContactItem;->addEmergencyService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItem;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyContactItem;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem$5;->this$0:Lcom/android/phone/EmergencyContactItem;

    iput-object p2, p0, Lcom/android/phone/EmergencyContactItem$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/phone/EmergencyContactItem$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem$5;->val$input:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
