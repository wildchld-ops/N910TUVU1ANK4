.class Landroid/webkitsec/JsDialogHelper$KeyListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkitsec/JsDialogHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/JsDialogHelper$KeyListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/JsDialogHelper;Landroid/webkitsec/JsDialogHelper$1;)V
    .locals 0
    .param p1    # Landroid/webkitsec/JsDialogHelper;
    .param p2    # Landroid/webkitsec/JsDialogHelper$1;

    invoke-direct {p0, p1}, Landroid/webkitsec/JsDialogHelper$KeyListener;-><init>(Landroid/webkitsec/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x54

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$KeyListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    # getter for: Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;
    invoke-static {v0}, Landroid/webkitsec/JsDialogHelper;->access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/JsResult;->cancel()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    return v1
.end method
