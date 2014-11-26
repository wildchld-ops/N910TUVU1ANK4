.class Landroid/webkitsec/NotificationPermissions$1;
.super Landroid/os/Handler;
.source "NotificationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/NotificationPermissions;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/NotificationPermissions;


# direct methods
.method constructor <init>(Landroid/webkitsec/NotificationPermissions;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/NotificationPermissions$1;->this$0:Landroid/webkitsec/NotificationPermissions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # invokes: Landroid/webkitsec/NotificationPermissions;->nativeClearAll()V
    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->access$000()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
