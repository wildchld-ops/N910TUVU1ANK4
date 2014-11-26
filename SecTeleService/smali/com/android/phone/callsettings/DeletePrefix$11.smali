.class Lcom/android/phone/callsettings/DeletePrefix$11;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->editDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$11;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iput-object p2, p0, Lcom/android/phone/callsettings/DeletePrefix$11;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$11;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$000(Lcom/android/phone/callsettings/DeletePrefix;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$11;->val$edittext:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
