.class public Lcom/android/mms/util/VipModeCTC;
.super Ljava/lang/Object;
.source "VipModeCTC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/VipModeCTC$ConfigDialog;
    }
.end annotation


# static fields
.field public static final ACTION_RESTORE_SPAM_MESSAGES:Ljava/lang/String; = "com.android.mms.spam.ACTION_RESTORE_SPAM_MESSAGES"

.field public static final ACTION_VIEW_SPAM_MMS:Ljava/lang/String; = "com.android.mms.spam.ACTION_VIEW_SPAM_MMS"

.field public static final ACTION_VIEW_SPAM_MMS_NOTIFICATION:Ljava/lang/String; = "com.android.mms.spam.ACTION_VIEW_SPAM_MMS_NOTIFICATION"

.field public static final ACTION_VIEW_SPAM_SMS:Ljava/lang/String; = "com.android.mms.spam.ACTION_VIEW_SPAM_SMS"

.field private static final FIREWALL_PROVIDER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "Mms/VipModeCTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.firewall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/VipModeCTC;->FIREWALL_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfigDialogIntent(Ljava/lang/String;Lcom/android/mms/util/VipModeCTC$ConfigDialog;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list"

    sget-object v1, Lcom/android/mms/util/VipModeCTC$ConfigDialog;->BLACKLIST:Lcom/android/mms/util/VipModeCTC$ConfigDialog;

    if-ne p1, v1, :cond_0

    const-string v1, "blacklist"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string v1, "whitelist"

    goto :goto_0
.end method

.method public static isMessageBlocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "number"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/util/VipModeCTC;->FIREWALL_PROVIDER_URI:Landroid/net/Uri;

    const-string v5, "should_block"

    const-string v6, "message"

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v3, "Mms/VipModeCTC"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v3, "Mms/VipModeCTC"

    const-string v4, "isMessageBlocked: no valid response from content provider"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNumberEligibleForConfigDialog(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
