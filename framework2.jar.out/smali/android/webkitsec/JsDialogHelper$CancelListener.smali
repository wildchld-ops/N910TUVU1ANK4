.class Landroid/webkitsec/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkitsec/JsDialogHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/JsDialogHelper$CancelListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/JsDialogHelper;Landroid/webkitsec/JsDialogHelper$1;)V
    .locals 0
    .param p1    # Landroid/webkitsec/JsDialogHelper;
    .param p2    # Landroid/webkitsec/JsDialogHelper$1;

    invoke-direct {p0, p1}, Landroid/webkitsec/JsDialogHelper$CancelListener;-><init>(Landroid/webkitsec/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$CancelListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    # getter for: Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;
    invoke-static {v0}, Landroid/webkitsec/JsDialogHelper;->access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/JsResult;->cancel()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$CancelListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    # getter for: Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;
    invoke-static {v0}, Landroid/webkitsec/JsDialogHelper;->access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/JsResult;->cancel()V

    return-void
.end method
