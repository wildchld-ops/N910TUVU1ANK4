.class Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;->this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;->this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # invokes: Landroid/webkitsec/WebViewClassic;->updateColor(I)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$3900(Landroid/webkitsec/WebViewClassic;I)V

    return-void
.end method
