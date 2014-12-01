.class Landroid/webkitsec/WebViewClassic$DateTimePicker$4;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    const/4 v1, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4302(Landroid/webkitsec/WebViewClassic$DateTimePicker;Z)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    # invokes: Landroid/webkitsec/WebViewClassic$DateTimePicker;->clear()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4800(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    :cond_0
    return-void
.end method
