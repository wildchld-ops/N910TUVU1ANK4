.class Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeClose()V
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->access$200()V

    goto :goto_0

    :pswitch_2
    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeRemoveAllIcons()V
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->access$300()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkitsec/WebIconDatabase$IconListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    invoke-static {v2, v1, v0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$400(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$500(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$600(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic;->access$700(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
