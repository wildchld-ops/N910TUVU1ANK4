.class Landroid/webkitsec/AutoCompletePopup$1;
.super Landroid/os/Handler;
.source "AutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/AutoCompletePopup;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$WebViewInputConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/AutoCompletePopup;


# direct methods
.method constructor <init>(Landroid/webkitsec/AutoCompletePopup;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/AutoCompletePopup$1;->this$0:Landroid/webkitsec/AutoCompletePopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup$1;->this$0:Landroid/webkitsec/AutoCompletePopup;

    # getter for: Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/AutoCompletePopup;->access$100(Landroid/webkitsec/AutoCompletePopup;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup$1;->this$0:Landroid/webkitsec/AutoCompletePopup;

    # getter for: Landroid/webkitsec/AutoCompletePopup;->mQueryId:I
    invoke-static {v1}, Landroid/webkitsec/AutoCompletePopup;->access$000(Landroid/webkitsec/AutoCompletePopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->autoFillForm(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
