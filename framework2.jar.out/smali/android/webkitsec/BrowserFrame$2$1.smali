.class Landroid/webkitsec/BrowserFrame$2$1;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/BrowserFrame$2;->proceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/BrowserFrame$2;


# direct methods
.method constructor <init>(Landroid/webkitsec/BrowserFrame$2;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/BrowserFrame$2$1;->this$1:Landroid/webkitsec/BrowserFrame$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame$2$1;->this$1:Landroid/webkitsec/BrowserFrame$2;

    iget-boolean v0, v0, Landroid/webkitsec/BrowserFrame$2;->isCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame$2$1;->this$1:Landroid/webkitsec/BrowserFrame$2;

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame$2;->this$0:Landroid/webkitsec/BrowserFrame;

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame$2$1;->this$1:Landroid/webkitsec/BrowserFrame$2;

    iget v1, v1, Landroid/webkitsec/BrowserFrame$2;->val$handle:I

    # invokes: Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorProceed(I)V
    invoke-static {v0, v1}, Landroid/webkitsec/BrowserFrame;->access$200(Landroid/webkitsec/BrowserFrame;I)V

    :cond_0
    return-void
.end method
