.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;

.field final synthetic val$hasKeyboard_12Key:Z


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    iput-boolean p2, p0, Landroid/widget/NumberPicker$3;->val$hasKeyboard_12Key:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/16 v7, 0x42

    const/16 v6, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_0

    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-boolean v4, p0, Landroid/widget/NumberPicker$3;->val$hasKeyboard_12Key:Z

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-object v4, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    if-eq p2, v7, :cond_3

    if-ne p2, v6, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x1020393

    if-ne v4, v5, :cond_4

    iget-object v3, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v3, v2}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    :goto_0
    return v2

    :cond_4
    iget-object v4, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v4, v3}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    if-eq p2, v7, :cond_6

    if-ne p2, v6, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v3}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    move v2, v3

    goto :goto_0
.end method
