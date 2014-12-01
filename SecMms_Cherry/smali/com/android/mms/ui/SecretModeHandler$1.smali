.class Lcom/android/mms/ui/SecretModeHandler$1;
.super Landroid/os/Handler;
.source "SecretModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SecretModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SecretModeHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SecretModeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SecretModeHandler$1;->this$0:Lcom/android/mms/ui/SecretModeHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler$1;->this$0:Lcom/android/mms/ui/SecretModeHandler;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/SecretModeHandler;->updateSecretMode(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
