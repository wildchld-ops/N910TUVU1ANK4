.class Landroid/webkitsec/WebViewCore$2;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkitsec/WebStorage$QuotaUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore;->reachedMaxAppCacheSize(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewCore$2;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateQuota(J)V
    .locals 2
    .param p1    # J

    iget-object v0, p0, Landroid/webkitsec/WebViewCore$2;->this$0:Landroid/webkitsec/WebViewCore;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore$2;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v1

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetNewStorageLimit(IJ)V
    invoke-static {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->access$500(Landroid/webkitsec/WebViewCore;IJ)V

    return-void
.end method
