.class Lcom/android/settings/wifi/WifiShareProfile$1;
.super Landroid/os/Handler;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
