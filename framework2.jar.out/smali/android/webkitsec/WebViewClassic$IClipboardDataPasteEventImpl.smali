.class Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$1;-><init>(Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$2;-><init>(Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
