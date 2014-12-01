.class Landroid/webkitsec/WebViewClassic$DateTimePicker$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic$DateTimePicker;
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

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    # setter for: Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I
    invoke-static {v0, p2}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4502(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    # setter for: Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I
    invoke-static {v0, p3}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4602(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    # getter for: Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4300(Landroid/webkitsec/WebViewClassic$DateTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    # invokes: Landroid/webkitsec/WebViewClassic$DateTimePicker;->updateTime()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4700(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkitsec/WebViewClassic$DateTimePicker;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->access$4302(Landroid/webkitsec/WebViewClassic$DateTimePicker;Z)Z

    goto :goto_0
.end method
