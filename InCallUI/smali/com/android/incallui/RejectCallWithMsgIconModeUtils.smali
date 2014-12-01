.class public Lcom/android/incallui/RejectCallWithMsgIconModeUtils;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconModeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIconMode(Landroid/content/Context;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v7, "reject_call_with_message_icon_mode"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "content://com.android.phone.callsettings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "getDisplayMode"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v7, "display_mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v6, "RejectCallWithMsgIconModeUtils"

    const-string v7, "isIconMode() bundle is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "RejectCallWithMsgIconModeUtils"

    const-string v7, "isIconMode() bundle creation failed : "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
