.class Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " IClipboardDataPasteEvent onClipboardDataPaste"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
