.class Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    # invokes: Landroid/webkitsec/WebViewClassic;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$1700(Landroid/webkitsec/WebViewClassic;Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
