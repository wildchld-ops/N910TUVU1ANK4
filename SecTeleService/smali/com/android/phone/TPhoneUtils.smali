.class public Lcom/android/phone/TPhoneUtils;
.super Ljava/lang/Object;
.source "TPhoneUtils.java"


# static fields
.field public static mRADDialingToKorea:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/TPhoneUtils;->mRADDialingToKorea:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "ACTIVE"

    goto :goto_0

    :pswitch_2
    const-string v0, "HOLDING"

    goto :goto_0

    :pswitch_3
    const-string v0, "DIALING"

    goto :goto_0

    :pswitch_4
    const-string v0, "ALERTING"

    goto :goto_0

    :pswitch_5
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_6
    const-string v0, "WAITING"

    goto :goto_0

    :pswitch_7
    const-string v0, "DISCONNECTED"

    goto :goto_0

    :pswitch_8
    const-string v0, "DISCONNECTING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static callTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CS_CALL_VOICE "

    goto :goto_0

    :pswitch_1
    const-string v0, "CS_CALL_VIDEO "

    goto :goto_0

    :pswitch_2
    const-string v0, "IMS_NARROWBAND_CALL_VOICE"

    goto :goto_0

    :pswitch_3
    const-string v0, "IMS_WIDEBAND_CALL_VOICE"

    goto :goto_0

    :pswitch_4
    const-string v0, "IMS_WIDEBAND_CALL_VIDEO"

    goto :goto_0

    :pswitch_5
    const-string v0, "IMS_CALL_VIDEO_CONFERENCE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static internalSetDefaultPhoneApp(Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 12
    .param p0    # Landroid/content/IntentFilter;
    .param p1    # Landroid/content/Intent;
    .param p2    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v9, 0x10080

    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    iget v10, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v9, v10, :cond_0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v8, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v3

    iget v9, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v1, :cond_2

    iget v1, v5, Landroid/content/pm/ResolveInfo;->match:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4, p0, v1, v8, p2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static isRelaxMode()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneGlobals;->getCallFilterType(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "- TPhone RelaxMode."

    invoke-static {v2}, Lcom/android/phone/TPhoneUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "TPhoneUtils"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static mHandlerToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PHONE_STATE_CHANGED"

    goto :goto_0

    :sswitch_1
    const-string v0, "PHONE_NEW_RINGING_CONNECTION"

    goto :goto_0

    :sswitch_2
    const-string v0, "PHONE_DISCONNECT"

    goto :goto_0

    :sswitch_3
    const-string v0, "SUPP_SERVICE_FAILED"

    goto :goto_0

    :sswitch_4
    const-string v0, "PHONE_INCOMING_RING"

    goto :goto_0

    :sswitch_5
    const-string v0, "PHONE_INCOMING_MODIFY_CALL_REQUEST"

    goto :goto_0

    :sswitch_6
    const-string v0, "PHONE_MODIFY_CALL_RESULT"

    goto :goto_0

    :sswitch_7
    const-string v0, "DELAYED_CLEANUP_AFTER_DISCONNECT"

    goto :goto_0

    :sswitch_8
    const-string v0, "SS_INFO"

    goto :goto_0

    :sswitch_9
    const-string v0, "DELAYED_STOP_DTMF"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6e -> :sswitch_3
        0x70 -> :sswitch_5
        0x71 -> :sswitch_6
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_7
        0x3eb -> :sswitch_9
    .end sparse-switch
.end method

.method public static setDefaultPhoneApp(I)V
    .locals 14
    .param p0    # I

    const/4 v13, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set Default PhoneApp : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-ne p0, v13, :cond_0

    const-string v11, "SKT T Phone"

    :goto_0
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TPhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v1, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v1, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v11, "tel"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    const-string v12, "tel:"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v2, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v11, "tel"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    const-string v12, "tel:"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.CALL"

    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v11, "tel"

    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL"

    const-string v12, "tel:"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-ne p0, v13, :cond_1

    new-instance v9, Landroid/content/ComponentName;

    const-string v11, "com.skt.prod.dialer"

    const-string v12, "com.skt.prod.dialer.activities.main.DialIntroActivity"

    invoke-direct {v9, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    const-string v11, "com.skt.prod.phone"

    const-string v12, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v5, v9}, Lcom/android/phone/TPhoneUtils;->internalSetDefaultPhoneApp(Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    invoke-static {v2, v6, v9}, Lcom/android/phone/TPhoneUtils;->internalSetDefaultPhoneApp(Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    invoke-static {v3, v7, v9}, Lcom/android/phone/TPhoneUtils;->internalSetDefaultPhoneApp(Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    invoke-static {v0, v4, v8}, Lcom/android/phone/TPhoneUtils;->internalSetDefaultPhoneApp(Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    return-void

    :cond_0
    const-string v11, "OEM Phone"

    goto/16 :goto_0

    :cond_1
    new-instance v9, Landroid/content/ComponentName;

    const-string v11, "com.android.contacts"

    const-string v12, "com.android.dialer.DialtactsActivity"

    invoke-direct {v9, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.OutgoingCallBroadcaster"

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
