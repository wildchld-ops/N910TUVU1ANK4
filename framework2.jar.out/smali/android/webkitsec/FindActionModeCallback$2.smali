.class Landroid/webkitsec/FindActionModeCallback$2;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkitsec/FindActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback$2;->this$0:Landroid/webkitsec/FindActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback$2;->this$0:Landroid/webkitsec/FindActionModeCallback;

    # getter for: Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/webkitsec/FindActionModeCallback;->access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback$2;->this$0:Landroid/webkitsec/FindActionModeCallback;

    # getter for: Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/webkitsec/FindActionModeCallback;->access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback$2;->this$0:Landroid/webkitsec/FindActionModeCallback;

    # getter for: Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/webkitsec/FindActionModeCallback;->access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback$2;->this$0:Landroid/webkitsec/FindActionModeCallback;

    # getter for: Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Landroid/webkitsec/FindActionModeCallback;->access$100(Landroid/webkitsec/FindActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
