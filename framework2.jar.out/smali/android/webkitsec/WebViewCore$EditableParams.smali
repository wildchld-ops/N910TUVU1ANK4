.class public Landroid/webkitsec/WebViewCore$EditableParams;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditableParams"
.end annotation


# instance fields
.field composing:Z

.field content:Ljava/lang/String;

.field endOffset:I

.field newCursorPosition:I

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field startOffset:I

.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewCore$EditableParams;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
