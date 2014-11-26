.class final Lcom/absolute/android/persistservice/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ad;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ad;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ad;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ad;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ah;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ad;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ad;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ad;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ad;->b(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ad;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ad;->c(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
