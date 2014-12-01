.class Lcom/android/phone/sip/SipSettings$11;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/net/sip/SipRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistering(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f090227

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationDone(Ljava/lang/String;J)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022d

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022f

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f090230

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    # invokes: Lcom/android/phone/sip/SipSettings;->getApplicationContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/sip/SipSettings;->access$1600(Lcom/android/phone/sip/SipSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022b

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022a

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$11;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f09022c

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1500(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
