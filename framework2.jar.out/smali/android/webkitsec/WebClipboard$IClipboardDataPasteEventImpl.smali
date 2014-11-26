.class Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "WebClipboard.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/webkitsec/WebClipboard;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebClipboard;)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;->this$0:Landroid/webkitsec/WebClipboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$1;-><init>(Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1    # Landroid/sec/clipboard/data/ClipboardData;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "onClipboardDataPaste"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;->this$0:Landroid/webkitsec/WebClipboard;

    # getter for: Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkitsec/WebClipboard;->access$200(Landroid/webkitsec/WebClipboard;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$2;-><init>(Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
