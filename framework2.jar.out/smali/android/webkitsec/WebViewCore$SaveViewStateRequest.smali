.class Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveViewStateRequest"
.end annotation


# instance fields
.field public mCallback:Landroid/webkitsec/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    iput-object p2, p0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkitsec/ValueCallback;

    return-void
.end method
