.class final Lcom/android/phone/PhoneUtilsCommon$2;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtilsCommon;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/PhoneUtilsCommon$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v2, "sendSMSAsBackground"

    const/4 v3, 0x1

    # invokes: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
