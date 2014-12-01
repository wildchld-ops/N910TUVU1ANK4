.class Lcom/android/phone/OutgoingCallBroadcaster$15;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$15;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$15;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mCurrentNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$15;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$15;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    return-void
.end method
