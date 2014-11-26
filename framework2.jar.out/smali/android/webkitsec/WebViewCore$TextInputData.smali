.class Landroid/webkitsec/WebViewCore$TextInputData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInputData"
.end annotation


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mStart:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mStart:I

    iput p2, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mEnd:I

    iput-object p4, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    iput p3, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mSelectTextPtr:I

    return-void
.end method
