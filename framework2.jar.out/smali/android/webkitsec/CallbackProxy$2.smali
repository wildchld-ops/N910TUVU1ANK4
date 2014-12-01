.class Landroid/webkitsec/CallbackProxy$2;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/CallbackProxy;

.field final synthetic val$res:Landroid/webkitsec/JsResult;


# direct methods
.method constructor <init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$2;->this$0:Landroid/webkitsec/CallbackProxy;

    iput-object p2, p0, Landroid/webkitsec/CallbackProxy$2;->val$res:Landroid/webkitsec/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$2;->val$res:Landroid/webkitsec/JsResult;

    invoke-virtual {v0}, Landroid/webkitsec/JsResult;->cancel()V

    return-void
.end method
