.class Lcom/android/phone/sip/SipSettings$1;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    # getter for: Lcom/android/phone/sip/SipSettings;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;
    invoke-static {v1}, Lcom/android/phone/sip/SipSettings;->access$400(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipProfileDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/sip/SipProfileDb;->updateCipherProfiles()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SipSettings"

    const-string v2, "updateCipherProfiles failed"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
